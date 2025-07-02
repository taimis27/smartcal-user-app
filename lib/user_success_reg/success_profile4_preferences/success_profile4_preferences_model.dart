import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'success_profile4_preferences_widget.dart'
    show SuccessProfile4PreferencesWidget;
import 'package:flutter/material.dart';

class SuccessProfile4PreferencesModel
    extends FlutterFlowModel<SuccessProfile4PreferencesWidget> {
  ///  Local state fields for this page.

  bool isBtn1Visible = true;

  bool isBtn2Visible = true;

  bool isBtn3Visible = true;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for allergies widget.
  String? allergiesValue;
  FormFieldController<String>? allergiesValueController;
  // State field(s) for intolerances widget.
  String? intolerancesValue;
  FormFieldController<String>? intolerancesValueController;
  // State field(s) for existingConditions widget.
  String? existingConditionsValue;
  FormFieldController<String>? existingConditionsValueController;
  // State field(s) for religiousRestrictions widget.
  String? religiousRestrictionsValue;
  FormFieldController<String>? religiousRestrictionsValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
