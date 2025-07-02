import '/flutter_flow/flutter_flow_util.dart';
import 'adds_weight_widget.dart' show AddsWeightWidget;
import 'package:flutter/material.dart';

class AddsWeightModel extends FlutterFlowModel<AddsWeightWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for newWeight widget.
  FocusNode? newWeightFocusNode;
  TextEditingController? newWeightTextController;
  String? Function(BuildContext, String?)? newWeightTextControllerValidator;
  String? _newWeightTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter your Weight';
    }

    return null;
  }

  DateTime? datePicked;

  @override
  void initState(BuildContext context) {
    newWeightTextControllerValidator = _newWeightTextControllerValidator;
  }

  @override
  void dispose() {
    newWeightFocusNode?.dispose();
    newWeightTextController?.dispose();
  }
}
