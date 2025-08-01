import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'food_category_widget.dart' show FoodCategoryWidget;
import 'package:flutter/material.dart';

class FoodCategoryModel extends FlutterFlowModel<FoodCategoryWidget> {
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
