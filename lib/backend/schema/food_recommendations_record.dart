import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FoodRecommendationsRecord extends FirestoreRecord {
  FoodRecommendationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "foodName" field.
  String? _foodName;
  String get foodName => _foodName ?? '';
  bool hasFoodName() => _foodName != null;

  // "approvedBy" field.
  String? _approvedBy;
  String get approvedBy => _approvedBy ?? '';
  bool hasApprovedBy() => _approvedBy != null;

  // "nutriId" field.
  String? _nutriId;
  String get nutriId => _nutriId ?? '';
  bool hasNutriId() => _nutriId != null;

  // "foodDesc" field.
  String? _foodDesc;
  String get foodDesc => _foodDesc ?? '';
  bool hasFoodDesc() => _foodDesc != null;

  // "foodlmg" field.
  String? _foodlmg;
  String get foodlmg => _foodlmg ?? '';
  bool hasFoodlmg() => _foodlmg != null;

  // "servingSize" field.
  String? _servingSize;
  String get servingSize => _servingSize ?? '';
  bool hasServingSize() => _servingSize != null;

  // "cal" field.
  double? _cal;
  double get cal => _cal ?? 0.0;
  bool hasCal() => _cal != null;

  // "totalCarb" field.
  double? _totalCarb;
  double get totalCarb => _totalCarb ?? 0.0;
  bool hasTotalCarb() => _totalCarb != null;

  // "protein" field.
  double? _protein;
  double get protein => _protein ?? 0.0;
  bool hasProtein() => _protein != null;

  // "totalFat" field.
  double? _totalFat;
  double get totalFat => _totalFat ?? 0.0;
  bool hasTotalFat() => _totalFat != null;

  // "calcium" field.
  double? _calcium;
  double get calcium => _calcium ?? 0.0;
  bool hasCalcium() => _calcium != null;

  // "iron" field.
  double? _iron;
  double get iron => _iron ?? 0.0;
  bool hasIron() => _iron != null;

  // "vitA" field.
  double? _vitA;
  double get vitA => _vitA ?? 0.0;
  bool hasVitA() => _vitA != null;

  // "vitCDV" field.
  double? _vitCDV;
  double get vitCDV => _vitCDV ?? 0.0;
  bool hasVitCDV() => _vitCDV != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "exceedCalorieIntake" field.
  bool? _exceedCalorieIntake;
  bool get exceedCalorieIntake => _exceedCalorieIntake ?? false;
  bool hasExceedCalorieIntake() => _exceedCalorieIntake != null;

  void _initializeFields() {
    _foodName = snapshotData['foodName'] as String?;
    _approvedBy = snapshotData['approvedBy'] as String?;
    _nutriId = snapshotData['nutriId'] as String?;
    _foodDesc = snapshotData['foodDesc'] as String?;
    _foodlmg = snapshotData['foodlmg'] as String?;
    _servingSize = snapshotData['servingSize'] as String?;
    _cal = castToType<double>(snapshotData['cal']);
    _totalCarb = castToType<double>(snapshotData['totalCarb']);
    _protein = castToType<double>(snapshotData['protein']);
    _totalFat = castToType<double>(snapshotData['totalFat']);
    _calcium = castToType<double>(snapshotData['calcium']);
    _iron = castToType<double>(snapshotData['iron']);
    _vitA = castToType<double>(snapshotData['vitA']);
    _vitCDV = castToType<double>(snapshotData['vitCDV']);
    _category = snapshotData['category'] as String?;
    _exceedCalorieIntake = snapshotData['exceedCalorieIntake'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('foodRecommendations');

  static Stream<FoodRecommendationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FoodRecommendationsRecord.fromSnapshot(s));

  static Future<FoodRecommendationsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => FoodRecommendationsRecord.fromSnapshot(s));

  static FoodRecommendationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FoodRecommendationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FoodRecommendationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FoodRecommendationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FoodRecommendationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FoodRecommendationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFoodRecommendationsRecordData({
  String? foodName,
  String? approvedBy,
  String? nutriId,
  String? foodDesc,
  String? foodlmg,
  String? servingSize,
  double? cal,
  double? totalCarb,
  double? protein,
  double? totalFat,
  double? calcium,
  double? iron,
  double? vitA,
  double? vitCDV,
  String? category,
  bool? exceedCalorieIntake,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'foodName': foodName,
      'approvedBy': approvedBy,
      'nutriId': nutriId,
      'foodDesc': foodDesc,
      'foodlmg': foodlmg,
      'servingSize': servingSize,
      'cal': cal,
      'totalCarb': totalCarb,
      'protein': protein,
      'totalFat': totalFat,
      'calcium': calcium,
      'iron': iron,
      'vitA': vitA,
      'vitCDV': vitCDV,
      'category': category,
      'exceedCalorieIntake': exceedCalorieIntake,
    }.withoutNulls,
  );

  return firestoreData;
}

class FoodRecommendationsRecordDocumentEquality
    implements Equality<FoodRecommendationsRecord> {
  const FoodRecommendationsRecordDocumentEquality();

  @override
  bool equals(FoodRecommendationsRecord? e1, FoodRecommendationsRecord? e2) {
    return e1?.foodName == e2?.foodName &&
        e1?.approvedBy == e2?.approvedBy &&
        e1?.nutriId == e2?.nutriId &&
        e1?.foodDesc == e2?.foodDesc &&
        e1?.foodlmg == e2?.foodlmg &&
        e1?.servingSize == e2?.servingSize &&
        e1?.cal == e2?.cal &&
        e1?.totalCarb == e2?.totalCarb &&
        e1?.protein == e2?.protein &&
        e1?.totalFat == e2?.totalFat &&
        e1?.calcium == e2?.calcium &&
        e1?.iron == e2?.iron &&
        e1?.vitA == e2?.vitA &&
        e1?.vitCDV == e2?.vitCDV &&
        e1?.category == e2?.category &&
        e1?.exceedCalorieIntake == e2?.exceedCalorieIntake;
  }

  @override
  int hash(FoodRecommendationsRecord? e) => const ListEquality().hash([
        e?.foodName,
        e?.approvedBy,
        e?.nutriId,
        e?.foodDesc,
        e?.foodlmg,
        e?.servingSize,
        e?.cal,
        e?.totalCarb,
        e?.protein,
        e?.totalFat,
        e?.calcium,
        e?.iron,
        e?.vitA,
        e?.vitCDV,
        e?.category,
        e?.exceedCalorieIntake
      ]);

  @override
  bool isValidKey(Object? o) => o is FoodRecommendationsRecord;
}
