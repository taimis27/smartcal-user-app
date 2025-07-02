import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'set_goals_widget.dart' show SetGoalsWidget;
import 'package:flutter/material.dart';

class SetGoalsModel extends FlutterFlowModel<SetGoalsWidget> {
  ///  Local state fields for this component.

  bool isBtn1Visible = true;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for activityLevel widget.
  String? activityLevelValue;
  FormFieldController<String>? activityLevelValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
