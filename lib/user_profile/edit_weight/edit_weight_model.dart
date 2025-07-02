import '/flutter_flow/flutter_flow_util.dart';
import 'edit_weight_widget.dart' show EditWeightWidget;
import 'package:flutter/material.dart';

class EditWeightModel extends FlutterFlowModel<EditWeightWidget> {
  ///  Local state fields for this component.

  bool isBtn1Visible = true;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
