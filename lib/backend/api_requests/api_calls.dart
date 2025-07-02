import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Calorie Ninja Group Code

class CalorieNinjaGroup {
  static String getBaseUrl() => 'https://api.calorieninjas.com/v1';
  static Map<String, String> headers = {
    'X-Api-Key': 'k6WP8CFv8ja5rCZGvvdhDg==Jwyi6Hk35pVwr94y',
  };
  static NutritionCall nutritionCall = NutritionCall();
  static RecipeCall recipeCall = RecipeCall();
  static ImageTextNutritionCall imageTextNutritionCall =
      ImageTextNutritionCall();
}

class NutritionCall {
  Future<ApiCallResponse> call({
    String? searchedFood = '',
  }) async {
    final baseUrl = CalorieNinjaGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'nutrition',
      apiUrl: '${baseUrl}/nutrition',
      callType: ApiCallType.GET,
      headers: {
        'X-Api-Key': 'k6WP8CFv8ja5rCZGvvdhDg==Jwyi6Hk35pVwr94y',
      },
      params: {
        'query': searchedFood,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.items[:].name''',
      ));
  double? cal(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.items[:].calories''',
      ));
  int? serving(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.items[:].serving_size_g''',
      ));
  double? totalfat(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.items[:].fat_total_g''',
      ));
  double? satfat(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.items[:].fat_saturated_g''',
      ));
  double? protein(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.items[:].protein_g''',
      ));
  int? sodium(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.items[:].sodium_mg''',
      ));
  int? potassium(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.items[:].potassium_mg''',
      ));
  int? cholesterol(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.items[:].cholesterol_mg''',
      ));
  double? carb(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.items[:].carbohydrates_total_g''',
      ));
  double? fiber(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.items[:].fiber_g''',
      ));
  double? sugar(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.items[:].sugar_g''',
      ));
}

class RecipeCall {
  Future<ApiCallResponse> call({
    String? searchedFood = '',
  }) async {
    final baseUrl = CalorieNinjaGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Recipe',
      apiUrl: '${baseUrl}/recipe',
      callType: ApiCallType.GET,
      headers: {
        'X-Api-Key': 'k6WP8CFv8ja5rCZGvvdhDg==Jwyi6Hk35pVwr94y',
      },
      params: {
        'query': searchedFood,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ImageTextNutritionCall {
  Future<ApiCallResponse> call({
    String? uploadedImgSearch = '',
  }) async {
    final baseUrl = CalorieNinjaGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Image Text Nutrition',
      apiUrl: '${baseUrl}/imagetextnutrition',
      callType: ApiCallType.GET,
      headers: {
        'X-Api-Key': 'k6WP8CFv8ja5rCZGvvdhDg==Jwyi6Hk35pVwr94y',
      },
      params: {
        'imgSearched': uploadedImgSearch,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Calorie Ninja Group Code

class CopyDataCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'copyData',
      apiUrl:
          'https://firestore.googleapis.com/v1/projects/<smart-cal-user-app-1yo0ab/databases/(default)/documents/<userProfile>?key=<AIzaSyAmK_GjmmV9ldcL567tLtiEvPrwq6LLN7k>',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PdfMonkeyCall {
  static Future<ApiCallResponse> call({
    String? username = '',
    double? bmi,
    String? bmiCategory = '',
    double? calorieLimit,
    double? calorieRemaining,
    double? weight,
    double? height,
    String? activiyLevel = '',
    String? curdate = '',
    String? bodyCategory = '',
    double? bmr,
    String? religion = '',
    int? age,
    String? sex = '',
    String? birthdate = '',
    double? totalCal,
    double? totalCatb,
    double? totalProtein,
    double? totalFat,
    String? profileImg = '',
    String? email = '',
  }) async {
    final ffApiRequestBody = '''
{
  "document": {
    "app_id": "C0A4447E-2FDA-4CB0-AEAB-66E10199A597",
    "document_template_id": "C0A4447E-2FDA-4CB0-AEAB-66E10199A597",
    "payload": {
      "user": {
        "name": "${escapeStringForJson(username)}",
        "bmi": "${bmi}",
        "bmiCategory": "${escapeStringForJson(bmiCategory)}",
        "calorieLimit": "${calorieLimit}",
        "calorieRemaining": "${calorieRemaining}",
        "activity_level": "${escapeStringForJson(activiyLevel)}",
        "current_date": "${escapeStringForJson(curdate)}",
        "bodyCategory": "${escapeStringForJson(bodyCategory)}",
        "bmr": "${bmr}",
        "religion": "${escapeStringForJson(religion)}",
        "age": "${age}",
        "birthdate": "${escapeStringForJson(birthdate)}",
        "sex": "${escapeStringForJson(sex)}",
        "totalCal": "${totalCal}",
        "totalProtein": "${totalProtein}",
        "totalCarb": "${totalCatb}",
        "totalFat": "${totalFat}",
        "profileImage": "${escapeStringForJson(profileImg)}",
        "email": "${escapeStringForJson(email)}"
      }
    }
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'PdfMonkey',
      apiUrl: 'https://api.pdfmonkey.io/api/v1/documents',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ssB3MfBDbfvPWvvQsdy4',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QuickChartCall {
  static Future<ApiCallResponse> call({
    List<double>? wieghtProgressList,
    List<double>? calorieIntakeList,
    List<double>? waterIntakeList,
  }) async {
    final wieghtProgress = _serializeList(wieghtProgressList);
    final calorieIntake = _serializeList(calorieIntakeList);
    final waterIntake = _serializeList(waterIntakeList);

    return ApiManager.instance.makeApiCall(
      callName: 'quickChart',
      apiUrl: 'https://quickchart.io/chart',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
