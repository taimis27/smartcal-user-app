import '/flutter_flow/flutter_flow_util.dart';
import 'browse_category_widget.dart' show BrowseCategoryWidget;
import 'package:flutter/material.dart';

class BrowseCategoryModel extends FlutterFlowModel<BrowseCategoryWidget> {
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
