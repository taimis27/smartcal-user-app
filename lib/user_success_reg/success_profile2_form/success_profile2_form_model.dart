import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'success_profile2_form_widget.dart' show SuccessProfile2FormWidget;
import 'package:flutter/material.dart';

class SuccessProfile2FormModel
    extends FlutterFlowModel<SuccessProfile2FormWidget> {
  ///  Local state fields for this page.

  bool isBtn1Visible = true;

  bool isBtn2Visible = true;

  bool isBtn3Visible = true;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for FirstName widget.
  FocusNode? firstNameFocusNode1;
  TextEditingController? firstNameTextController1;
  String? Function(BuildContext, String?)? firstNameTextController1Validator;
  // State field(s) for FirstName widget.
  FocusNode? firstNameFocusNode2;
  TextEditingController? firstNameTextController2;
  String? Function(BuildContext, String?)? firstNameTextController2Validator;
  // State field(s) for LastName widget.
  FocusNode? lastNameFocusNode;
  TextEditingController? lastNameTextController;
  String? Function(BuildContext, String?)? lastNameTextControllerValidator;
  // State field(s) for username widget.
  FocusNode? usernameFocusNode;
  TextEditingController? usernameTextController;
  String? Function(BuildContext, String?)? usernameTextControllerValidator;
  // State field(s) for sex widget.
  String? sexValue;
  FormFieldController<String>? sexValueController;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    firstNameFocusNode1?.dispose();
    firstNameTextController1?.dispose();

    firstNameFocusNode2?.dispose();
    firstNameTextController2?.dispose();

    lastNameFocusNode?.dispose();
    lastNameTextController?.dispose();

    usernameFocusNode?.dispose();
    usernameTextController?.dispose();
  }
}
