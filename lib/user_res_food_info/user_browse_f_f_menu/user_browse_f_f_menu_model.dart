import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'user_browse_f_f_menu_widget.dart' show UserBrowseFFMenuWidget;
import 'package:flutter/material.dart';

class UserBrowseFFMenuModel extends FlutterFlowModel<UserBrowseFFMenuWidget> {
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
