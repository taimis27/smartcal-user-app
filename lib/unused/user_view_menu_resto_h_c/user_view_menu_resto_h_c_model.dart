import '/flutter_flow/flutter_flow_util.dart';
import '/user_browse_resto/topbrands_tile/topbrands_tile_widget.dart';
import '/index.dart';
import 'user_view_menu_resto_h_c_widget.dart' show UserViewMenuRestoHCWidget;
import 'package:flutter/material.dart';

class UserViewMenuRestoHCModel
    extends FlutterFlowModel<UserViewMenuRestoHCWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for topbrandsTile component.
  late TopbrandsTileModel topbrandsTileModel1;
  // Model for topbrandsTile component.
  late TopbrandsTileModel topbrandsTileModel2;
  // Model for topbrandsTile component.
  late TopbrandsTileModel topbrandsTileModel3;
  // Model for topbrandsTile component.
  late TopbrandsTileModel topbrandsTileModel4;
  // Model for topbrandsTile component.
  late TopbrandsTileModel topbrandsTileModel5;
  // Model for topbrandsTile component.
  late TopbrandsTileModel topbrandsTileModel6;

  @override
  void initState(BuildContext context) {
    topbrandsTileModel1 = createModel(context, () => TopbrandsTileModel());
    topbrandsTileModel2 = createModel(context, () => TopbrandsTileModel());
    topbrandsTileModel3 = createModel(context, () => TopbrandsTileModel());
    topbrandsTileModel4 = createModel(context, () => TopbrandsTileModel());
    topbrandsTileModel5 = createModel(context, () => TopbrandsTileModel());
    topbrandsTileModel6 = createModel(context, () => TopbrandsTileModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    topbrandsTileModel1.dispose();
    topbrandsTileModel2.dispose();
    topbrandsTileModel3.dispose();
    topbrandsTileModel4.dispose();
    topbrandsTileModel5.dispose();
    topbrandsTileModel6.dispose();
  }
}
