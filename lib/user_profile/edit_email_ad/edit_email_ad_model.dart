import '/flutter_flow/flutter_flow_util.dart';
import 'edit_email_ad_widget.dart' show EditEmailAdWidget;
import 'package:flutter/material.dart';

class EditEmailAdModel extends FlutterFlowModel<EditEmailAdWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for dailyCalGoals widget.
  FocusNode? dailyCalGoalsFocusNode;
  TextEditingController? dailyCalGoalsTextController;
  String? Function(BuildContext, String?)? dailyCalGoalsTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    dailyCalGoalsFocusNode?.dispose();
    dailyCalGoalsTextController?.dispose();
  }
}
