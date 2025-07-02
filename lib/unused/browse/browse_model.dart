import '/flutter_flow/flutter_flow_util.dart';
import '/unused/search_suggest/search_suggest_widget.dart';
import 'browse_widget.dart' show BrowseWidget;
import 'package:flutter/material.dart';

class BrowseModel extends FlutterFlowModel<BrowseWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for recentSearches.
  late SearchSuggestModel recentSearchesModel1;
  // Model for recentSearches.
  late SearchSuggestModel recentSearchesModel2;
  // Model for recentSearches.
  late SearchSuggestModel recentSearchesModel3;
  // Model for recentSearches.
  late SearchSuggestModel recentSearchesModel4;

  @override
  void initState(BuildContext context) {
    recentSearchesModel1 = createModel(context, () => SearchSuggestModel());
    recentSearchesModel2 = createModel(context, () => SearchSuggestModel());
    recentSearchesModel3 = createModel(context, () => SearchSuggestModel());
    recentSearchesModel4 = createModel(context, () => SearchSuggestModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    recentSearchesModel1.dispose();
    recentSearchesModel2.dispose();
    recentSearchesModel3.dispose();
    recentSearchesModel4.dispose();
  }
}
