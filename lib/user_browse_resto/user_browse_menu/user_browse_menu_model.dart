import '/flutter_flow/flutter_flow_util.dart';
import 'user_browse_menu_widget.dart' show UserBrowseMenuWidget;
import 'package:flutter/material.dart';

class UserBrowseMenuModel extends FlutterFlowModel<UserBrowseMenuWidget> {
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
