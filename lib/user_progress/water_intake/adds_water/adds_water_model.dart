import '/flutter_flow/flutter_flow_util.dart';
import 'adds_water_widget.dart' show AddsWaterWidget;
import 'package:flutter/material.dart';

class AddsWaterModel extends FlutterFlowModel<AddsWaterWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for newWater widget.
  FocusNode? newWaterFocusNode;
  TextEditingController? newWaterTextController;
  String? Function(BuildContext, String?)? newWaterTextControllerValidator;
  String? _newWaterTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter your Weight';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    newWaterTextControllerValidator = _newWaterTextControllerValidator;
  }

  @override
  void dispose() {
    newWaterFocusNode?.dispose();
    newWaterTextController?.dispose();
  }
}
