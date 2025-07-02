import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'popular_restoin_q_c_widget.dart' show PopularRestoinQCWidget;
import 'package:flutter/material.dart';

class PopularRestoinQCModel extends FlutterFlowModel<PopularRestoinQCWidget> {
  ///  State fields for stateful widgets in this page.

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
