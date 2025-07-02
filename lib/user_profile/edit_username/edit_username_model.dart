import '/flutter_flow/flutter_flow_util.dart';
import 'edit_username_widget.dart' show EditUsernameWidget;
import 'package:flutter/material.dart';

class EditUsernameModel extends FlutterFlowModel<EditUsernameWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for username widget.
  FocusNode? usernameFocusNode;
  TextEditingController? usernameTextController;
  String? Function(BuildContext, String?)? usernameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    usernameFocusNode?.dispose();
    usernameTextController?.dispose();
  }
}
