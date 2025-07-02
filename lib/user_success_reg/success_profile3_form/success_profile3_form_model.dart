import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'success_profile3_form_widget.dart' show SuccessProfile3FormWidget;
import 'package:flutter/material.dart';

class SuccessProfile3FormModel
    extends FlutterFlowModel<SuccessProfile3FormWidget> {
  ///  Local state fields for this page.

  bool isBtn1Visible = true;

  bool isBtn2Visible = true;

  bool isBtn3Visible = true;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for bodyCategory widget.
  String? bodyCategoryValue;
  FormFieldController<String>? bodyCategoryValueController;
  // State field(s) for activityLevel widget.
  String? activityLevelValue;
  FormFieldController<String>? activityLevelValueController;
  // State field(s) for Objective widget.
  String? objectiveValue;
  FormFieldController<String>? objectiveValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();
  }
}
