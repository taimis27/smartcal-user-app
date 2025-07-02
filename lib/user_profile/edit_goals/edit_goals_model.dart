import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_goals_widget.dart' show EditGoalsWidget;
import 'package:flutter/material.dart';

class EditGoalsModel extends FlutterFlowModel<EditGoalsWidget> {
  ///  Local state fields for this component.

  bool isBtn1Visible = true;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for activityLevel widget.
  String? activityLevelValue;
  FormFieldController<String>? activityLevelValueController;
  // State field(s) for dailyCalGoals widget.
  FocusNode? dailyCalGoalsFocusNode;
  TextEditingController? dailyCalGoalsTextController;
  String? Function(BuildContext, String?)? dailyCalGoalsTextControllerValidator;
  // State field(s) for carbs widget.
  FocusNode? carbsFocusNode;
  TextEditingController? carbsTextController;
  String? Function(BuildContext, String?)? carbsTextControllerValidator;
  // State field(s) for protein widget.
  FocusNode? proteinFocusNode;
  TextEditingController? proteinTextController;
  String? Function(BuildContext, String?)? proteinTextControllerValidator;
  // State field(s) for fat widget.
  FocusNode? fatFocusNode;
  TextEditingController? fatTextController;
  String? Function(BuildContext, String?)? fatTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    dailyCalGoalsFocusNode?.dispose();
    dailyCalGoalsTextController?.dispose();

    carbsFocusNode?.dispose();
    carbsTextController?.dispose();

    proteinFocusNode?.dispose();
    proteinTextController?.dispose();

    fatFocusNode?.dispose();
    fatTextController?.dispose();
  }
}
