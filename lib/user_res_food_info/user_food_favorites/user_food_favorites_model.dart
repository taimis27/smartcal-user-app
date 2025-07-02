import '/flutter_flow/flutter_flow_util.dart';
import '/user_res_food_info/food/food_widget.dart';
import 'user_food_favorites_widget.dart' show UserFoodFavoritesWidget;
import 'package:flutter/material.dart';

class UserFoodFavoritesModel extends FlutterFlowModel<UserFoodFavoritesWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for food component.
  late FoodModel foodModel;

  @override
  void initState(BuildContext context) {
    foodModel = createModel(context, () => FoodModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    foodModel.dispose();
  }
}
