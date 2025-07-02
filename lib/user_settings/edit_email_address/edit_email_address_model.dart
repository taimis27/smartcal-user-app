import '/flutter_flow/flutter_flow_util.dart';
import 'edit_email_address_widget.dart' show EditEmailAddressWidget;
import 'package:flutter/material.dart';

class EditEmailAddressModel extends FlutterFlowModel<EditEmailAddressWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for loginEmail widget.
  FocusNode? loginEmailFocusNode;
  TextEditingController? loginEmailTextController;
  String? Function(BuildContext, String?)? loginEmailTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    loginEmailFocusNode?.dispose();
    loginEmailTextController?.dispose();
  }
}
