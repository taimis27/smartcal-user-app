import '/flutter_flow/flutter_flow_util.dart';
import 'list_recipe_widget.dart' show ListRecipeWidget;
import 'package:flutter/material.dart';

class ListRecipeModel extends FlutterFlowModel<ListRecipeWidget> {
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
