import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'submit_feedback_widget.dart' show SubmitFeedbackWidget;
import 'package:flutter/material.dart';

class SubmitFeedbackModel extends FlutterFlowModel<SubmitFeedbackWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // State field(s) for feedBack widget.
  FocusNode? feedBackFocusNode;
  TextEditingController? feedBackTextController;
  String? Function(BuildContext, String?)? feedBackTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    feedBackFocusNode?.dispose();
    feedBackTextController?.dispose();
  }
}
