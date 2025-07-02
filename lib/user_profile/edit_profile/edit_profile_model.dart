import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:flutter/material.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataX3k = false;
  FFUploadedFile uploadedLocalFile_uploadDataX3k =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataX3k = '';

  // Stores action output result for [Backend Call - API (PdfMonkey)] action in Button widget.
  ApiCallResponse? apiResult6dg;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
