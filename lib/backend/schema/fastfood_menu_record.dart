import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FastfoodMenuRecord extends FirestoreRecord {
  FastfoodMenuRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "menuItem" field.
  String? _menuItem;
  String get menuItem => _menuItem ?? '';
  bool hasMenuItem() => _menuItem != null;

  // "restauName" field.
  String? _restauName;
  String get restauName => _restauName ?? '';
  bool hasRestauName() => _restauName != null;

  // "foodMenulmg" field.
  String? _foodMenulmg;
  String get foodMenulmg => _foodMenulmg ?? '';
  bool hasFoodMenulmg() => _foodMenulmg != null;

  // "restauId" field.
  String? _restauId;
  String get restauId => _restauId ?? '';
  bool hasRestauId() => _restauId != null;

  // "foodDesc" field.
  String? _foodDesc;
  String get foodDesc => _foodDesc ?? '';
  bool hasFoodDesc() => _foodDesc != null;

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

  // "calFat" field.
  double? _calFat;
  double get calFat => _calFat ?? 0.0;
  bool hasCalFat() => _calFat != null;

  // "saturatedFat" field.
  double? _saturatedFat;
  double get saturatedFat => _saturatedFat ?? 0.0;
  bool hasSaturatedFat() => _saturatedFat != null;

  // "transFat" field.
  double? _transFat;
  double get transFat => _transFat ?? 0.0;
  bool hasTransFat() => _transFat != null;

  // "monoUnsaturatedFat" field.
  double? _monoUnsaturatedFat;
  double get monoUnsaturatedFat => _monoUnsaturatedFat ?? 0.0;
  bool hasMonoUnsaturatedFat() => _monoUnsaturatedFat != null;

  // "polyUnsaturatedFat" field.
  double? _polyUnsaturatedFat;
  double get polyUnsaturatedFat => _polyUnsaturatedFat ?? 0.0;
  bool hasPolyUnsaturatedFat() => _polyUnsaturatedFat != null;

  // "cholesterol" field.
  double? _cholesterol;
  double get cholesterol => _cholesterol ?? 0.0;
  bool hasCholesterol() => _cholesterol != null;

  // "sodium" field.
  double? _sodium;
  double get sodium => _sodium ?? 0.0;
  bool hasSodium() => _sodium != null;

  // "sugar" field.
  double? _sugar;
  double get sugar => _sugar ?? 0.0;
  bool hasSugar() => _sugar != null;

  // "dietaryFiber" field.
  double? _dietaryFiber;
  double get dietaryFiber => _dietaryFiber ?? 0.0;
  bool hasDietaryFiber() => _dietaryFiber != null;

  // "vitA" field.
  String? _vitA;
  String get vitA => _vitA ?? '';
  bool hasVitA() => _vitA != null;

  // "vitCDV" field.
  double? _vitCDV;
  double get vitCDV => _vitCDV ?? 0.0;
  bool hasVitCDV() => _vitCDV != null;

  // "calcium" field.
  String? _calcium;
  String get calcium => _calcium ?? '';
  bool hasCalcium() => _calcium != null;

  // "potassium" field.
  String? _potassium;
  String get potassium => _potassium ?? '';
  bool hasPotassium() => _potassium != null;

  // "iron" field.
  double? _iron;
  double get iron => _iron ?? 0.0;
  bool hasIron() => _iron != null;

  // "servingSize" field.
  double? _servingSize;
  double get servingSize => _servingSize ?? 0.0;
  bool hasServingSize() => _servingSize != null;

  // "numberOfServing" field.
  double? _numberOfServing;
  double get numberOfServing => _numberOfServing ?? 0.0;
  bool hasNumberOfServing() => _numberOfServing != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "allergen" field.
  String? _allergen;
  String get allergen => _allergen ?? '';
  bool hasAllergen() => _allergen != null;

  void _initializeFields() {
    _menuItem = snapshotData['menuItem'] as String?;
    _restauName = snapshotData['restauName'] as String?;
    _foodMenulmg = snapshotData['foodMenulmg'] as String?;
    _restauId = snapshotData['restauId'] as String?;
    _foodDesc = snapshotData['foodDesc'] as String?;
    _cal = castToType<double>(snapshotData['cal']);
    _totalCarb = castToType<double>(snapshotData['totalCarb']);
    _protein = castToType<double>(snapshotData['protein']);
    _totalFat = castToType<double>(snapshotData['totalFat']);
    _calFat = castToType<double>(snapshotData['calFat']);
    _saturatedFat = castToType<double>(snapshotData['saturatedFat']);
    _transFat = castToType<double>(snapshotData['transFat']);
    _monoUnsaturatedFat =
        castToType<double>(snapshotData['monoUnsaturatedFat']);
    _polyUnsaturatedFat =
        castToType<double>(snapshotData['polyUnsaturatedFat']);
    _cholesterol = castToType<double>(snapshotData['cholesterol']);
    _sodium = castToType<double>(snapshotData['sodium']);
    _sugar = castToType<double>(snapshotData['sugar']);
    _dietaryFiber = castToType<double>(snapshotData['dietaryFiber']);
    _vitA = snapshotData['vitA'] as String?;
    _vitCDV = castToType<double>(snapshotData['vitCDV']);
    _calcium = snapshotData['calcium'] as String?;
    _potassium = snapshotData['potassium'] as String?;
    _iron = castToType<double>(snapshotData['iron']);
    _servingSize = castToType<double>(snapshotData['servingSize']);
    _numberOfServing = castToType<double>(snapshotData['numberOfServing']);
    _category = snapshotData['category'] as String?;
    _allergen = snapshotData['allergen'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('FastfoodMenu');

  static Stream<FastfoodMenuRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FastfoodMenuRecord.fromSnapshot(s));

  static Future<FastfoodMenuRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FastfoodMenuRecord.fromSnapshot(s));

  static FastfoodMenuRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FastfoodMenuRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FastfoodMenuRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FastfoodMenuRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FastfoodMenuRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FastfoodMenuRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFastfoodMenuRecordData({
  String? menuItem,
  String? restauName,
  String? foodMenulmg,
  String? restauId,
  String? foodDesc,
  double? cal,
  double? totalCarb,
  double? protein,
  double? totalFat,
  double? calFat,
  double? saturatedFat,
  double? transFat,
  double? monoUnsaturatedFat,
  double? polyUnsaturatedFat,
  double? cholesterol,
  double? sodium,
  double? sugar,
  double? dietaryFiber,
  String? vitA,
  double? vitCDV,
  String? calcium,
  String? potassium,
  double? iron,
  double? servingSize,
  double? numberOfServing,
  String? category,
  String? allergen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'menuItem': menuItem,
      'restauName': restauName,
      'foodMenulmg': foodMenulmg,
      'restauId': restauId,
      'foodDesc': foodDesc,
      'cal': cal,
      'totalCarb': totalCarb,
      'protein': protein,
      'totalFat': totalFat,
      'calFat': calFat,
      'saturatedFat': saturatedFat,
      'transFat': transFat,
      'monoUnsaturatedFat': monoUnsaturatedFat,
      'polyUnsaturatedFat': polyUnsaturatedFat,
      'cholesterol': cholesterol,
      'sodium': sodium,
      'sugar': sugar,
      'dietaryFiber': dietaryFiber,
      'vitA': vitA,
      'vitCDV': vitCDV,
      'calcium': calcium,
      'potassium': potassium,
      'iron': iron,
      'servingSize': servingSize,
      'numberOfServing': numberOfServing,
      'category': category,
      'allergen': allergen,
    }.withoutNulls,
  );

  return firestoreData;
}

class FastfoodMenuRecordDocumentEquality
    implements Equality<FastfoodMenuRecord> {
  const FastfoodMenuRecordDocumentEquality();

  @override
  bool equals(FastfoodMenuRecord? e1, FastfoodMenuRecord? e2) {
    return e1?.menuItem == e2?.menuItem &&
        e1?.restauName == e2?.restauName &&
        e1?.foodMenulmg == e2?.foodMenulmg &&
        e1?.restauId == e2?.restauId &&
        e1?.foodDesc == e2?.foodDesc &&
        e1?.cal == e2?.cal &&
        e1?.totalCarb == e2?.totalCarb &&
        e1?.protein == e2?.protein &&
        e1?.totalFat == e2?.totalFat &&
        e1?.calFat == e2?.calFat &&
        e1?.saturatedFat == e2?.saturatedFat &&
        e1?.transFat == e2?.transFat &&
        e1?.monoUnsaturatedFat == e2?.monoUnsaturatedFat &&
        e1?.polyUnsaturatedFat == e2?.polyUnsaturatedFat &&
        e1?.cholesterol == e2?.cholesterol &&
        e1?.sodium == e2?.sodium &&
        e1?.sugar == e2?.sugar &&
        e1?.dietaryFiber == e2?.dietaryFiber &&
        e1?.vitA == e2?.vitA &&
        e1?.vitCDV == e2?.vitCDV &&
        e1?.calcium == e2?.calcium &&
        e1?.potassium == e2?.potassium &&
        e1?.iron == e2?.iron &&
        e1?.servingSize == e2?.servingSize &&
        e1?.numberOfServing == e2?.numberOfServing &&
        e1?.category == e2?.category &&
        e1?.allergen == e2?.allergen;
  }

  @override
  int hash(FastfoodMenuRecord? e) => const ListEquality().hash([
        e?.menuItem,
        e?.restauName,
        e?.foodMenulmg,
        e?.restauId,
        e?.foodDesc,
        e?.cal,
        e?.totalCarb,
        e?.protein,
        e?.totalFat,
        e?.calFat,
        e?.saturatedFat,
        e?.transFat,
        e?.monoUnsaturatedFat,
        e?.polyUnsaturatedFat,
        e?.cholesterol,
        e?.sodium,
        e?.sugar,
        e?.dietaryFiber,
        e?.vitA,
        e?.vitCDV,
        e?.calcium,
        e?.potassium,
        e?.iron,
        e?.servingSize,
        e?.numberOfServing,
        e?.category,
        e?.allergen
      ]);

  @override
  bool isValidKey(Object? o) => o is FastfoodMenuRecord;
}
