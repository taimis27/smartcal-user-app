import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'food_recommendation_widget.dart' show FoodRecommendationWidget;
import 'package:flutter/material.dart';

class FoodRecommendationModel
    extends FlutterFlowModel<FoodRecommendationWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
