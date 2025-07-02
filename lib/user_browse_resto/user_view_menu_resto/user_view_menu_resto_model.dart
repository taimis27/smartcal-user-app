import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'user_view_menu_resto_widget.dart' show UserViewMenuRestoWidget;
import 'package:flutter/material.dart';

class UserViewMenuRestoModel extends FlutterFlowModel<UserViewMenuRestoWidget> {
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
