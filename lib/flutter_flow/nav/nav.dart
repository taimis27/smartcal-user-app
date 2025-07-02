import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? NavBarPage() : WelcomeScreenWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : WelcomeScreenWidget(),
        ),
        FFRoute(
          name: UserAuthWidget.routeName,
          path: UserAuthWidget.routePath,
          builder: (context, params) => UserAuthWidget(),
        ),
        FFRoute(
          name: SuccessProfile1uWidget.routeName,
          path: SuccessProfile1uWidget.routePath,
          builder: (context, params) => SuccessProfile1uWidget(),
        ),
        FFRoute(
            name: UserDashboardWidget.routeName,
            path: UserDashboardWidget.routePath,
            builder: (context, params) => params.isEmpty
                ? NavBarPage(initialPage: 'userDashboard')
                : NavBarPage(
                    initialPage: 'userDashboard',
                    page: UserDashboardWidget(),
                  )),
        FFRoute(
          name: WelcomeScreenWidget.routeName,
          path: WelcomeScreenWidget.routePath,
          builder: (context, params) => WelcomeScreenWidget(),
        ),
        FFRoute(
          name: SuccessProfile8SuccessWidget.routeName,
          path: SuccessProfile8SuccessWidget.routePath,
          builder: (context, params) => SuccessProfile8SuccessWidget(),
        ),
        FFRoute(
          name: SuccessProfile2FormWidget.routeName,
          path: SuccessProfile2FormWidget.routePath,
          builder: (context, params) => SuccessProfile2FormWidget(),
        ),
        FFRoute(
          name: Onboarding1Widget.routeName,
          path: Onboarding1Widget.routePath,
          builder: (context, params) => Onboarding1Widget(),
        ),
        FFRoute(
          name: Onboarding2Widget.routeName,
          path: Onboarding2Widget.routePath,
          builder: (context, params) => Onboarding2Widget(),
        ),
        FFRoute(
          name: Onboarding3Widget.routeName,
          path: Onboarding3Widget.routePath,
          builder: (context, params) => Onboarding3Widget(),
        ),
        FFRoute(
          name: Onboarding4Widget.routeName,
          path: Onboarding4Widget.routePath,
          builder: (context, params) => Onboarding4Widget(),
        ),
        FFRoute(
          name: UserProfileWidget.routeName,
          path: UserProfileWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'userProfile')
              : UserProfileWidget(),
        ),
        FFRoute(
          name: UserMealDiaryWidget.routeName,
          path: UserMealDiaryWidget.routePath,
          asyncParams: {
            'resetDoc':
                getDoc(['calorieReset'], CalorieResetRecord.fromSnapshot),
            'prefDoc': getDoc(['userDietaryPreferences'],
                UserDietaryPreferencesRecord.fromSnapshot),
          },
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'userMealDiary')
              : UserMealDiaryWidget(
                  resetDoc: params.getParam(
                    'resetDoc',
                    ParamType.Document,
                  ),
                  prefDoc: params.getParam(
                    'prefDoc',
                    ParamType.Document,
                  ),
                ),
        ),
        FFRoute(
          name: UserViewMenuRestoWidget.routeName,
          path: UserViewMenuRestoWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'userViewMenuResto')
              : UserViewMenuRestoWidget(),
        ),
        FFRoute(
          name: BrowseWidget.routeName,
          path: BrowseWidget.routePath,
          builder: (context, params) => BrowseWidget(),
        ),
        FFRoute(
          name: UserFastfoodFavoritesWidget.routeName,
          path: UserFastfoodFavoritesWidget.routePath,
          builder: (context, params) => UserFastfoodFavoritesWidget(),
        ),
        FFRoute(
          name: UserResInfoWidget.routeName,
          path: UserResInfoWidget.routePath,
          asyncParams: {
            'restauProfile':
                getDoc(['restauProfile'], RestauProfileRecord.fromSnapshot),
          },
          builder: (context, params) => UserResInfoWidget(
            restauProfile: params.getParam(
              'restauProfile',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: UserFoodInfoWidget.routeName,
          path: UserFoodInfoWidget.routePath,
          asyncParams: {
            'fastfoodMenu':
                getDoc(['FastfoodMenu'], FastfoodMenuRecord.fromSnapshot),
          },
          builder: (context, params) => UserFoodInfoWidget(
            fastfoodMenu: params.getParam(
              'fastfoodMenu',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: UserNutriDetailsWidget.routeName,
          path: UserNutriDetailsWidget.routePath,
          asyncParams: {
            'foodMenu':
                getDoc(['FastfoodMenu'], FastfoodMenuRecord.fromSnapshot),
          },
          builder: (context, params) => UserNutriDetailsWidget(
            foodMenu: params.getParam(
              'foodMenu',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: UserNotificationWidget.routeName,
          path: UserNotificationWidget.routePath,
          builder: (context, params) => UserNotificationWidget(),
        ),
        FFRoute(
          name: UserAccountDataWidget.routeName,
          path: UserAccountDataWidget.routePath,
          builder: (context, params) => UserAccountDataWidget(),
        ),
        FFRoute(
          name: UserFoodFavoritesWidget.routeName,
          path: UserFoodFavoritesWidget.routePath,
          builder: (context, params) => UserFoodFavoritesWidget(),
        ),
        FFRoute(
          name: UserSettingsWidget.routeName,
          path: UserSettingsWidget.routePath,
          builder: (context, params) => UserSettingsWidget(),
        ),
        FFRoute(
          name: AboutUsWidget.routeName,
          path: AboutUsWidget.routePath,
          builder: (context, params) => AboutUsWidget(),
        ),
        FFRoute(
          name: PrivacyPolicyWidget.routeName,
          path: PrivacyPolicyWidget.routePath,
          builder: (context, params) => PrivacyPolicyWidget(),
        ),
        FFRoute(
          name: ManageAccountWidget.routeName,
          path: ManageAccountWidget.routePath,
          builder: (context, params) => ManageAccountWidget(),
        ),
        FFRoute(
          name: SubmitFeedbackWidget.routeName,
          path: SubmitFeedbackWidget.routePath,
          asyncParams: {
            'userProfileDoc':
                getDoc(['userProfile'], UserProfileRecord.fromSnapshot),
          },
          builder: (context, params) => SubmitFeedbackWidget(
            userProfileDoc: params.getParam(
              'userProfileDoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: HelpCenterWidget.routeName,
          path: HelpCenterWidget.routePath,
          builder: (context, params) => HelpCenterWidget(),
        ),
        FFRoute(
          name: TroubleshootingWidget.routeName,
          path: TroubleshootingWidget.routePath,
          builder: (context, params) => TroubleshootingWidget(),
        ),
        FFRoute(
          name: SecurityPrivacyWidget.routeName,
          path: SecurityPrivacyWidget.routePath,
          builder: (context, params) => SecurityPrivacyWidget(),
        ),
        FFRoute(
          name: SmartcalRestaurantsWidget.routeName,
          path: SmartcalRestaurantsWidget.routePath,
          builder: (context, params) => SmartcalRestaurantsWidget(),
        ),
        FFRoute(
          name: TermsConditionsWidget.routeName,
          path: TermsConditionsWidget.routePath,
          builder: (context, params) => TermsConditionsWidget(),
        ),
        FFRoute(
          name: SuccessProfile3FormWidget.routeName,
          path: SuccessProfile3FormWidget.routePath,
          builder: (context, params) => SuccessProfile3FormWidget(),
        ),
        FFRoute(
          name: SuccessProfile5PictureWidget.routeName,
          path: SuccessProfile5PictureWidget.routePath,
          builder: (context, params) => SuccessProfile5PictureWidget(),
        ),
        FFRoute(
          name: UserWeightProgressWidget.routeName,
          path: UserWeightProgressWidget.routePath,
          builder: (context, params) => UserWeightProgressWidget(),
        ),
        FFRoute(
          name: CalorieCalculatorWidget.routeName,
          path: CalorieCalculatorWidget.routePath,
          builder: (context, params) => CalorieCalculatorWidget(),
        ),
        FFRoute(
          name: CaloriesampleCopyWidget.routeName,
          path: CaloriesampleCopyWidget.routePath,
          builder: (context, params) => CaloriesampleCopyWidget(),
        ),
        FFRoute(
          name: BmiCalculatorWidget.routeName,
          path: BmiCalculatorWidget.routePath,
          builder: (context, params) => BmiCalculatorWidget(),
        ),
        FFRoute(
          name: IdCalculatorWidget.routeName,
          path: IdCalculatorWidget.routePath,
          builder: (context, params) => IdCalculatorWidget(),
        ),
        FFRoute(
          name: BodyfatCalculatorWidget.routeName,
          path: BodyfatCalculatorWidget.routePath,
          builder: (context, params) => BodyfatCalculatorWidget(),
        ),
        FFRoute(
          name: UserBMIWidget.routeName,
          path: UserBMIWidget.routePath,
          builder: (context, params) => UserBMIWidget(),
        ),
        FFRoute(
          name: PopularRestoinQCWidget.routeName,
          path: PopularRestoinQCWidget.routePath,
          builder: (context, params) => PopularRestoinQCWidget(),
        ),
        FFRoute(
          name: PopularFoodItemsWidget.routeName,
          path: PopularFoodItemsWidget.routePath,
          builder: (context, params) => PopularFoodItemsWidget(),
        ),
        FFRoute(
          name: PopularRestoWidget.routeName,
          path: PopularRestoWidget.routePath,
          builder: (context, params) => PopularRestoWidget(),
        ),
        FFRoute(
          name: AddFoodDiaryCategoryWidget.routeName,
          path: AddFoodDiaryCategoryWidget.routePath,
          asyncParams: {
            'userProfileDocx':
                getDoc(['userProfile'], UserProfileRecord.fromSnapshot),
            'calorieResetDoc':
                getDoc(['calorieReset'], CalorieResetRecord.fromSnapshot),
            'prefDoc': getDoc(['userDietaryPreferences'],
                UserDietaryPreferencesRecord.fromSnapshot),
          },
          builder: (context, params) => AddFoodDiaryCategoryWidget(
            userProfileDocx: params.getParam(
              'userProfileDocx',
              ParamType.Document,
            ),
            calorieResetDoc: params.getParam(
              'calorieResetDoc',
              ParamType.Document,
            ),
            prefDoc: params.getParam(
              'prefDoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: AddFoodDiaryDetailsWidget.routeName,
          path: AddFoodDiaryDetailsWidget.routePath,
          asyncParams: {
            'foodConsumeDoc':
                getDoc(['foodConsumed'], FoodConsumedRecord.fromSnapshot),
            'userProfileDocx':
                getDoc(['userProfile'], UserProfileRecord.fromSnapshot),
            'resetDoc':
                getDoc(['calorieReset'], CalorieResetRecord.fromSnapshot),
          },
          builder: (context, params) => AddFoodDiaryDetailsWidget(
            foodConsumeDoc: params.getParam(
              'foodConsumeDoc',
              ParamType.Document,
            ),
            userProfileDocx: params.getParam(
              'userProfileDocx',
              ParamType.Document,
            ),
            resetDoc: params.getParam(
              'resetDoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: UserGoalsWidget.routeName,
          path: UserGoalsWidget.routePath,
          builder: (context, params) => UserGoalsWidget(),
        ),
        FFRoute(
          name: RecipeCategoryWidget.routeName,
          path: RecipeCategoryWidget.routePath,
          builder: (context, params) => RecipeCategoryWidget(),
        ),
        FFRoute(
          name: RecipeInfoWidget.routeName,
          path: RecipeInfoWidget.routePath,
          builder: (context, params) => RecipeInfoWidget(),
        ),
        FFRoute(
          name: RecipeNutriDetailsWidget.routeName,
          path: RecipeNutriDetailsWidget.routePath,
          builder: (context, params) => RecipeNutriDetailsWidget(),
        ),
        FFRoute(
          name: ListRecipeWidget.routeName,
          path: ListRecipeWidget.routePath,
          builder: (context, params) => ListRecipeWidget(),
        ),
        FFRoute(
          name: WeightProgressListWidget.routeName,
          path: WeightProgressListWidget.routePath,
          builder: (context, params) => WeightProgressListWidget(),
        ),
        FFRoute(
          name: UserResInfo1Widget.routeName,
          path: UserResInfo1Widget.routePath,
          builder: (context, params) => UserResInfo1Widget(),
        ),
        FFRoute(
          name: UserBrowseMenuWidget.routeName,
          path: UserBrowseMenuWidget.routePath,
          builder: (context, params) => UserBrowseMenuWidget(),
        ),
        FFRoute(
          name: UserBrowsemcdoWidget.routeName,
          path: UserBrowsemcdoWidget.routePath,
          builder: (context, params) => UserBrowsemcdoWidget(),
        ),
        FFRoute(
          name: UserFoodInfo11Widget.routeName,
          path: UserFoodInfo11Widget.routePath,
          builder: (context, params) => UserFoodInfo11Widget(),
        ),
        FFRoute(
          name: UserNutriDetails11Widget.routeName,
          path: UserNutriDetails11Widget.routePath,
          builder: (context, params) => UserNutriDetails11Widget(),
        ),
        FFRoute(
          name: UserBrowse2Widget.routeName,
          path: UserBrowse2Widget.routePath,
          builder: (context, params) => UserBrowse2Widget(),
        ),
        FFRoute(
          name: UserFoodInfo21Widget.routeName,
          path: UserFoodInfo21Widget.routePath,
          builder: (context, params) => UserFoodInfo21Widget(),
        ),
        FFRoute(
          name: UserNutriDetails2Widget.routeName,
          path: UserNutriDetails2Widget.routePath,
          builder: (context, params) => UserNutriDetails2Widget(),
        ),
        FFRoute(
          name: UserResInfo2Widget.routeName,
          path: UserResInfo2Widget.routePath,
          builder: (context, params) => UserResInfo2Widget(),
        ),
        FFRoute(
          name: UserFoodInfo12Widget.routeName,
          path: UserFoodInfo12Widget.routePath,
          builder: (context, params) => UserFoodInfo12Widget(),
        ),
        FFRoute(
          name: UserFoodInfo22Widget.routeName,
          path: UserFoodInfo22Widget.routePath,
          builder: (context, params) => UserFoodInfo22Widget(),
        ),
        FFRoute(
          name: UserFoodInfo23Widget.routeName,
          path: UserFoodInfo23Widget.routePath,
          builder: (context, params) => UserFoodInfo23Widget(),
        ),
        FFRoute(
          name: UserFoodInfo24Widget.routeName,
          path: UserFoodInfo24Widget.routePath,
          builder: (context, params) => UserFoodInfo24Widget(),
        ),
        FFRoute(
          name: UserFoodInfo13Widget.routeName,
          path: UserFoodInfo13Widget.routePath,
          builder: (context, params) => UserFoodInfo13Widget(),
        ),
        FFRoute(
          name: UserFoodInfo14Widget.routeName,
          path: UserFoodInfo14Widget.routePath,
          builder: (context, params) => UserFoodInfo14Widget(),
        ),
        FFRoute(
          name: UserFoodInfo25Widget.routeName,
          path: UserFoodInfo25Widget.routePath,
          builder: (context, params) => UserFoodInfo25Widget(),
        ),
        FFRoute(
          name: UserFoodInfo26Widget.routeName,
          path: UserFoodInfo26Widget.routePath,
          builder: (context, params) => UserFoodInfo26Widget(),
        ),
        FFRoute(
          name: UserFoodInfo27Widget.routeName,
          path: UserFoodInfo27Widget.routePath,
          builder: (context, params) => UserFoodInfo27Widget(),
        ),
        FFRoute(
          name: UserFoodInfo15Widget.routeName,
          path: UserFoodInfo15Widget.routePath,
          builder: (context, params) => UserFoodInfo15Widget(),
        ),
        FFRoute(
          name: UserFoodInfo16Widget.routeName,
          path: UserFoodInfo16Widget.routePath,
          builder: (context, params) => UserFoodInfo16Widget(),
        ),
        FFRoute(
          name: UserNutriDetails12Widget.routeName,
          path: UserNutriDetails12Widget.routePath,
          builder: (context, params) => UserNutriDetails12Widget(),
        ),
        FFRoute(
          name: UserNutriDetails13Widget.routeName,
          path: UserNutriDetails13Widget.routePath,
          builder: (context, params) => UserNutriDetails13Widget(),
        ),
        FFRoute(
          name: UserNutriDetails14Widget.routeName,
          path: UserNutriDetails14Widget.routePath,
          builder: (context, params) => UserNutriDetails14Widget(),
        ),
        FFRoute(
          name: UserNutriDetails15Widget.routeName,
          path: UserNutriDetails15Widget.routePath,
          builder: (context, params) => UserNutriDetails15Widget(),
        ),
        FFRoute(
          name: UserNutriDetails16Widget.routeName,
          path: UserNutriDetails16Widget.routePath,
          builder: (context, params) => UserNutriDetails16Widget(),
        ),
        FFRoute(
          name: UserFoodInfo17Widget.routeName,
          path: UserFoodInfo17Widget.routePath,
          builder: (context, params) => UserFoodInfo17Widget(),
        ),
        FFRoute(
          name: UserNutriDetails17Widget.routeName,
          path: UserNutriDetails17Widget.routePath,
          builder: (context, params) => UserNutriDetails17Widget(),
        ),
        FFRoute(
          name: SuccessProfile1Widget.routeName,
          path: SuccessProfile1Widget.routePath,
          builder: (context, params) => SuccessProfile1Widget(),
        ),
        FFRoute(
          name: EditProfileWidget.routeName,
          path: EditProfileWidget.routePath,
          builder: (context, params) => EditProfileWidget(),
        ),
        FFRoute(
          name: UserViewMenuRestoHCWidget.routeName,
          path: UserViewMenuRestoHCWidget.routePath,
          builder: (context, params) => UserViewMenuRestoHCWidget(),
        ),
        FFRoute(
          name: SuccessProfile6ConfirmationWidget.routeName,
          path: SuccessProfile6ConfirmationWidget.routePath,
          builder: (context, params) => SuccessProfile6ConfirmationWidget(),
        ),
        FFRoute(
          name: SampleWidget.routeName,
          path: SampleWidget.routePath,
          builder: (context, params) => SampleWidget(),
        ),
        FFRoute(
          name: UserBrowseFFMenuWidget.routeName,
          path: UserBrowseFFMenuWidget.routePath,
          asyncParams: {
            'restauProfile':
                getDoc(['restauProfile'], RestauProfileRecord.fromSnapshot),
          },
          builder: (context, params) => UserBrowseFFMenuWidget(
            restauProfile: params.getParam(
              'restauProfile',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: SuccessProfile7DetailsResultWidget.routeName,
          path: SuccessProfile7DetailsResultWidget.routePath,
          builder: (context, params) => SuccessProfile7DetailsResultWidget(),
        ),
        FFRoute(
          name: HealthMetricsWidget.routeName,
          path: HealthMetricsWidget.routePath,
          builder: (context, params) => HealthMetricsWidget(),
        ),
        FFRoute(
          name: SampletemplateWidget.routeName,
          path: SampletemplateWidget.routePath,
          builder: (context, params) => SampletemplateWidget(),
        ),
        FFRoute(
          name: Sampletemplate2Widget.routeName,
          path: Sampletemplate2Widget.routePath,
          builder: (context, params) => Sampletemplate2Widget(),
        ),
        FFRoute(
          name: CourseWidget.routeName,
          path: CourseWidget.routePath,
          builder: (context, params) => CourseWidget(),
        ),
        FFRoute(
          name: Course1Widget.routeName,
          path: Course1Widget.routePath,
          builder: (context, params) => Course1Widget(),
        ),
        FFRoute(
          name: Course2Widget.routeName,
          path: Course2Widget.routePath,
          builder: (context, params) => Course2Widget(),
        ),
        FFRoute(
          name: SuccessProfile4PreferencesWidget.routeName,
          path: SuccessProfile4PreferencesWidget.routePath,
          builder: (context, params) => SuccessProfile4PreferencesWidget(),
        ),
        FFRoute(
          name: Course3Widget.routeName,
          path: Course3Widget.routePath,
          builder: (context, params) => Course3Widget(),
        ),
        FFRoute(
          name: Course4Widget.routeName,
          path: Course4Widget.routePath,
          builder: (context, params) => Course4Widget(),
        ),
        FFRoute(
          name: Course5Widget.routeName,
          path: Course5Widget.routePath,
          builder: (context, params) => Course5Widget(),
        ),
        FFRoute(
          name: Course6Widget.routeName,
          path: Course6Widget.routePath,
          builder: (context, params) => Course6Widget(),
        ),
        FFRoute(
          name: Course7Widget.routeName,
          path: Course7Widget.routePath,
          builder: (context, params) => Course7Widget(),
        ),
        FFRoute(
          name: Course8Widget.routeName,
          path: Course8Widget.routePath,
          builder: (context, params) => Course8Widget(),
        ),
        FFRoute(
          name: DietaryPreferencesWidget.routeName,
          path: DietaryPreferencesWidget.routePath,
          builder: (context, params) => DietaryPreferencesWidget(),
        ),
        FFRoute(
          name: FitnessGoalsWidget.routeName,
          path: FitnessGoalsWidget.routePath,
          builder: (context, params) => FitnessGoalsWidget(),
        ),
        FFRoute(
          name: FoodRecommendationWidget.routeName,
          path: FoodRecommendationWidget.routePath,
          asyncParams: {
            'prefDoc': getDoc(['userDietaryPreferences'],
                UserDietaryPreferencesRecord.fromSnapshot),
          },
          builder: (context, params) => FoodRecommendationWidget(
            prefDoc: params.getParam(
              'prefDoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: UserFoodRecommInfoWidget.routeName,
          path: UserFoodRecommInfoWidget.routePath,
          asyncParams: {
            'foodRecomm': getDoc(['foodRecommendations'],
                FoodRecommendationsRecord.fromSnapshot),
          },
          builder: (context, params) => UserFoodRecommInfoWidget(
            foodRecomm: params.getParam(
              'foodRecomm',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: UserfoodNutriDetailsWidget.routeName,
          path: UserfoodNutriDetailsWidget.routePath,
          asyncParams: {
            'foodRecomm': getDoc(['foodRecommendations'],
                FoodRecommendationsRecord.fromSnapshot),
          },
          builder: (context, params) => UserfoodNutriDetailsWidget(
            foodRecomm: params.getParam(
              'foodRecomm',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: WaterIntakeWidget.routeName,
          path: WaterIntakeWidget.routePath,
          builder: (context, params) => WaterIntakeWidget(),
        ),
        FFRoute(
          name: AdminDashboardWidget.routeName,
          path: AdminDashboardWidget.routePath,
          builder: (context, params) => AdminDashboardWidget(),
        ),
        FFRoute(
          name: NutriDashboardWidget.routeName,
          path: NutriDashboardWidget.routePath,
          builder: (context, params) => NutriDashboardWidget(),
        ),
        FFRoute(
          name: AddFoodDiaryDetailsReccomWidget.routeName,
          path: AddFoodDiaryDetailsReccomWidget.routePath,
          asyncParams: {
            'foodConsumeDoc': getDoc(['foodRecommendations'],
                FoodRecommendationsRecord.fromSnapshot),
            'userProfileDoc':
                getDoc(['userProfile'], UserProfileRecord.fromSnapshot),
            'resetDoc':
                getDoc(['calorieReset'], CalorieResetRecord.fromSnapshot),
          },
          builder: (context, params) => AddFoodDiaryDetailsReccomWidget(
            foodConsumeDoc: params.getParam(
              'foodConsumeDoc',
              ParamType.Document,
            ),
            userProfileDoc: params.getParam(
              'userProfileDoc',
              ParamType.Document,
            ),
            resetDoc: params.getParam(
              'resetDoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: BrowseCategoryWidget.routeName,
          path: BrowseCategoryWidget.routePath,
          builder: (context, params) => BrowseCategoryWidget(),
        ),
        FFRoute(
          name: FoodCategoryWidget.routeName,
          path: FoodCategoryWidget.routePath,
          builder: (context, params) => FoodCategoryWidget(),
        ),
        FFRoute(
          name: UserLogsWidget.routeName,
          path: UserLogsWidget.routePath,
          builder: (context, params) => UserLogsWidget(),
        ),
        FFRoute(
          name: SearchedFoodsWidget.routeName,
          path: SearchedFoodsWidget.routePath,
          builder: (context, params) => SearchedFoodsWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/welcomeScreen';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  child: Center(
                    child: Image.asset(
                      'assets/images/SmartCal_(2).png',
                      width: 250.0,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                )
              : PushNotificationsHandler(child: page);

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
