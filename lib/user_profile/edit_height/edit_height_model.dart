import '/flutter_flow/flutter_flow_util.dart';
import 'edit_height_widget.dart' show EditHeightWidget;
import 'package:flutter/material.dart';

class EditHeightModel extends FlutterFlowModel<EditHeightWidget> {
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
