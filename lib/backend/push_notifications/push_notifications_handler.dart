import 'dart:async';

import 'serialization_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';


final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    safeSetState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        if (mounted) {
          context.pushNamed(
            initialPageName,
            pathParameters: parameterData.pathParameters,
            extra: parameterData.extra,
          );
        } else {
          appNavigatorKey.currentContext?.pushNamed(
            initialPageName,
            pathParameters: parameterData.pathParameters,
            extra: parameterData.extra,
          );
        }
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      safeSetState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      handleOpenedPushNotification();
    });
  }

  @override
  Widget build(BuildContext context) => _loading
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
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'userAuth': ParameterData.none(),
  'successProfile1u': ParameterData.none(),
  'userDashboard': ParameterData.none(),
  'welcomeScreen': ParameterData.none(),
  'successProfile8-success': ParameterData.none(),
  'successProfile2-form': ParameterData.none(),
  'onboarding1': ParameterData.none(),
  'onboarding2': ParameterData.none(),
  'onboarding3': ParameterData.none(),
  'onboarding4': ParameterData.none(),
  'userProfile': ParameterData.none(),
  'userMealDiary': (data) async => ParameterData(
        allParams: {
          'resetDoc': await getDocumentParameter<CalorieResetRecord>(
              data, 'resetDoc', CalorieResetRecord.fromSnapshot),
          'prefDoc': await getDocumentParameter<UserDietaryPreferencesRecord>(
              data, 'prefDoc', UserDietaryPreferencesRecord.fromSnapshot),
        },
      ),
  'userViewMenuResto': ParameterData.none(),
  'browse': ParameterData.none(),
  'userFastfoodFavorites': ParameterData.none(),
  'userResInfo': (data) async => ParameterData(
        allParams: {
          'restauProfile': await getDocumentParameter<RestauProfileRecord>(
              data, 'restauProfile', RestauProfileRecord.fromSnapshot),
        },
      ),
  'userFoodInfo': (data) async => ParameterData(
        allParams: {
          'fastfoodMenu': await getDocumentParameter<FastfoodMenuRecord>(
              data, 'fastfoodMenu', FastfoodMenuRecord.fromSnapshot),
        },
      ),
  'userNutriDetails': (data) async => ParameterData(
        allParams: {
          'foodMenu': await getDocumentParameter<FastfoodMenuRecord>(
              data, 'foodMenu', FastfoodMenuRecord.fromSnapshot),
        },
      ),
  'userNotification': ParameterData.none(),
  'userAccountData': ParameterData.none(),
  'userFoodFavorites': ParameterData.none(),
  'userSettings': ParameterData.none(),
  'aboutUs': ParameterData.none(),
  'privacyPolicy': ParameterData.none(),
  'manageAccount': ParameterData.none(),
  'submitFeedback': (data) async => ParameterData(
        allParams: {
          'userProfileDoc': await getDocumentParameter<UserProfileRecord>(
              data, 'userProfileDoc', UserProfileRecord.fromSnapshot),
        },
      ),
  'helpCenter': ParameterData.none(),
  'troubleshooting': ParameterData.none(),
  'securityPrivacy': ParameterData.none(),
  'smartcalRestaurants': ParameterData.none(),
  'termsConditions': ParameterData.none(),
  'successProfile3-form': ParameterData.none(),
  'successProfile5-picture': ParameterData.none(),
  'userWeightProgress': ParameterData.none(),
  'calorieCalculator': ParameterData.none(),
  'caloriesampleCopy': ParameterData.none(),
  'bmiCalculator': ParameterData.none(),
  'idCalculator': ParameterData.none(),
  'bodyfatCalculator': ParameterData.none(),
  'userBMI': ParameterData.none(),
  'popularRestoinQC': ParameterData.none(),
  'popularFoodItems': ParameterData.none(),
  'popularResto': ParameterData.none(),
  'addFoodDiaryCategory': (data) async => ParameterData(
        allParams: {
          'userProfileDocx': await getDocumentParameter<UserProfileRecord>(
              data, 'userProfileDocx', UserProfileRecord.fromSnapshot),
          'calorieResetDoc': await getDocumentParameter<CalorieResetRecord>(
              data, 'calorieResetDoc', CalorieResetRecord.fromSnapshot),
          'prefDoc': await getDocumentParameter<UserDietaryPreferencesRecord>(
              data, 'prefDoc', UserDietaryPreferencesRecord.fromSnapshot),
        },
      ),
  'addFoodDiaryDetails': (data) async => ParameterData(
        allParams: {
          'foodConsumeDoc': await getDocumentParameter<FoodConsumedRecord>(
              data, 'foodConsumeDoc', FoodConsumedRecord.fromSnapshot),
          'userProfileDocx': await getDocumentParameter<UserProfileRecord>(
              data, 'userProfileDocx', UserProfileRecord.fromSnapshot),
          'resetDoc': await getDocumentParameter<CalorieResetRecord>(
              data, 'resetDoc', CalorieResetRecord.fromSnapshot),
        },
      ),
  'userGoals': ParameterData.none(),
  'recipeCategory': ParameterData.none(),
  'recipeInfo': ParameterData.none(),
  'recipeNutriDetails': ParameterData.none(),
  'listRecipe': ParameterData.none(),
  'weightProgressList': ParameterData.none(),
  'userResInfo1': ParameterData.none(),
  'userBrowseMenu': ParameterData.none(),
  'userBrowsemcdo': ParameterData.none(),
  'userFoodInfo11': ParameterData.none(),
  'userNutriDetails11': ParameterData.none(),
  'userBrowse2': ParameterData.none(),
  'userFoodInfo21': ParameterData.none(),
  'userNutriDetails2': ParameterData.none(),
  'userResInfo2': ParameterData.none(),
  'userFoodInfo12': ParameterData.none(),
  'userFoodInfo22': ParameterData.none(),
  'userFoodInfo23': ParameterData.none(),
  'userFoodInfo24': ParameterData.none(),
  'userFoodInfo13': ParameterData.none(),
  'userFoodInfo14': ParameterData.none(),
  'userFoodInfo25': ParameterData.none(),
  'userFoodInfo26': ParameterData.none(),
  'userFoodInfo27': ParameterData.none(),
  'userFoodInfo15': ParameterData.none(),
  'userFoodInfo16': ParameterData.none(),
  'userNutriDetails12': ParameterData.none(),
  'userNutriDetails13': ParameterData.none(),
  'userNutriDetails14': ParameterData.none(),
  'userNutriDetails15': ParameterData.none(),
  'userNutriDetails16': ParameterData.none(),
  'userFoodInfo17': ParameterData.none(),
  'userNutriDetails17': ParameterData.none(),
  'successProfile1': ParameterData.none(),
  'editProfile': ParameterData.none(),
  'userViewMenuRestoHC': ParameterData.none(),
  'successProfile6-confirmation': ParameterData.none(),
  'sample': ParameterData.none(),
  'userBrowseFFMenu': (data) async => ParameterData(
        allParams: {
          'restauProfile': await getDocumentParameter<RestauProfileRecord>(
              data, 'restauProfile', RestauProfileRecord.fromSnapshot),
        },
      ),
  'successProfile7-detailsResult': ParameterData.none(),
  'healthMetrics': ParameterData.none(),
  'sampletemplate': ParameterData.none(),
  'sampletemplate2': ParameterData.none(),
  'course': ParameterData.none(),
  'course1': ParameterData.none(),
  'course2': ParameterData.none(),
  'successProfile4-preferences': ParameterData.none(),
  'course3': ParameterData.none(),
  'course4': ParameterData.none(),
  'course5': ParameterData.none(),
  'course6': ParameterData.none(),
  'course7': ParameterData.none(),
  'course8': ParameterData.none(),
  'dietaryPreferences': ParameterData.none(),
  'fitnessGoals': ParameterData.none(),
  'foodRecommendation': (data) async => ParameterData(
        allParams: {
          'prefDoc': await getDocumentParameter<UserDietaryPreferencesRecord>(
              data, 'prefDoc', UserDietaryPreferencesRecord.fromSnapshot),
        },
      ),
  'userFoodRecommInfo': (data) async => ParameterData(
        allParams: {
          'foodRecomm': await getDocumentParameter<FoodRecommendationsRecord>(
              data, 'foodRecomm', FoodRecommendationsRecord.fromSnapshot),
        },
      ),
  'userfoodNutriDetails': (data) async => ParameterData(
        allParams: {
          'foodRecomm': await getDocumentParameter<FoodRecommendationsRecord>(
              data, 'foodRecomm', FoodRecommendationsRecord.fromSnapshot),
        },
      ),
  'waterIntake': ParameterData.none(),
  'adminDashboard': ParameterData.none(),
  'nutriDashboard': ParameterData.none(),
  'addFoodDiaryDetailsReccom': (data) async => ParameterData(
        allParams: {
          'foodConsumeDoc':
              await getDocumentParameter<FoodRecommendationsRecord>(data,
                  'foodConsumeDoc', FoodRecommendationsRecord.fromSnapshot),
          'userProfileDoc': await getDocumentParameter<UserProfileRecord>(
              data, 'userProfileDoc', UserProfileRecord.fromSnapshot),
          'resetDoc': await getDocumentParameter<CalorieResetRecord>(
              data, 'resetDoc', CalorieResetRecord.fromSnapshot),
        },
      ),
  'browseCategory': ParameterData.none(),
  'foodCategory': ParameterData.none(),
  'userLogs': ParameterData.none(),
  'searchedFoods': ParameterData.none(),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
