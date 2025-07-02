import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'user_browse2_widget.dart' show UserBrowse2Widget;
import 'package:flutter/material.dart';

class UserBrowse2Model extends FlutterFlowModel<UserBrowse2Widget> {
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
