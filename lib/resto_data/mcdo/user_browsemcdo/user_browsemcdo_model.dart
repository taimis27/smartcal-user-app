import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'user_browsemcdo_widget.dart' show UserBrowsemcdoWidget;
import 'package:flutter/material.dart';

class UserBrowsemcdoModel extends FlutterFlowModel<UserBrowsemcdoWidget> {
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
