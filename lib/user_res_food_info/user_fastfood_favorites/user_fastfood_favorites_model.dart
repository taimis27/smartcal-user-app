import '/flutter_flow/flutter_flow_util.dart';
import '/user_res_food_info/restaurant_cont/restaurant_cont_widget.dart';
import 'user_fastfood_favorites_widget.dart' show UserFastfoodFavoritesWidget;
import 'package:flutter/material.dart';

class UserFastfoodFavoritesModel
    extends FlutterFlowModel<UserFastfoodFavoritesWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for restaurantCont component.
  late RestaurantContModel restaurantContModel1;
  // Model for restaurantCont component.
  late RestaurantContModel restaurantContModel2;
  // Model for restaurantCont component.
  late RestaurantContModel restaurantContModel3;

  @override
  void initState(BuildContext context) {
    restaurantContModel1 = createModel(context, () => RestaurantContModel());
    restaurantContModel2 = createModel(context, () => RestaurantContModel());
    restaurantContModel3 = createModel(context, () => RestaurantContModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    restaurantContModel1.dispose();
    restaurantContModel2.dispose();
    restaurantContModel3.dispose();
  }
}
