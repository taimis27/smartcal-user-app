import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class McdoApprovedCalorieMenuRecord extends FirestoreRecord {
  McdoApprovedCalorieMenuRecord._(
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

  // "foodMenuImg" field.
  String? _foodMenuImg;
  String get foodMenuImg => _foodMenuImg ?? '';
  bool hasFoodMenuImg() => _foodMenuImg != null;

  // "nutriId" field.
  String? _nutriId;
  String get nutriId => _nutriId ?? '';
  bool hasNutriId() => _nutriId != null;

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

  // "polyunsaturatedFat" field.
  double? _polyunsaturatedFat;
  double get polyunsaturatedFat => _polyunsaturatedFat ?? 0.0;
  bool hasPolyunsaturatedFat() => _polyunsaturatedFat != null;

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

  // "vitaminA" field.
  String? _vitaminA;
  String get vitaminA => _vitaminA ?? '';
  bool hasVitaminA() => _vitaminA != null;

  // "vitaminCDV" field.
  String? _vitaminCDV;
  String get vitaminCDV => _vitaminCDV ?? '';
  bool hasVitaminCDV() => _vitaminCDV != null;

  // "calcium" field.
  String? _calcium;
  String get calcium => _calcium ?? '';
  bool hasCalcium() => _calcium != null;

  // "potassium" field.
  double? _potassium;
  double get potassium => _potassium ?? 0.0;
  bool hasPotassium() => _potassium != null;

  // "iron" field.
  double? _iron;
  double get iron => _iron ?? 0.0;
  bool hasIron() => _iron != null;

  // "servingSize" field.
  double? _servingSize;
  double get servingSize => _servingSize ?? 0.0;
  bool hasServingSize() => _servingSize != null;

  // "numberofServing" field.
  double? _numberofServing;
  double get numberofServing => _numberofServing ?? 0.0;
  bool hasNumberofServing() => _numberofServing != null;

  // "foodMenulmg" field.
  String? _foodMenulmg;
  String get foodMenulmg => _foodMenulmg ?? '';
  bool hasFoodMenulmg() => _foodMenulmg != null;

  // "polyUnsaturatedFat" field.
  double? _polyUnsaturatedFat;
  double get polyUnsaturatedFat => _polyUnsaturatedFat ?? 0.0;
  bool hasPolyUnsaturatedFat() => _polyUnsaturatedFat != null;

  // "vitA" field.
  String? _vitA;
  String get vitA => _vitA ?? '';
  bool hasVitA() => _vitA != null;

  // "vitCDV" field.
  String? _vitCDV;
  String get vitCDV => _vitCDV ?? '';
  bool hasVitCDV() => _vitCDV != null;

  // "numberOfServing" field.
  double? _numberOfServing;
  double get numberOfServing => _numberOfServing ?? 0.0;
  bool hasNumberOfServing() => _numberOfServing != null;

  void _initializeFields() {
    _menuItem = snapshotData['menuItem'] as String?;
    _restauName = snapshotData['restauName'] as String?;
    _foodMenuImg = snapshotData['foodMenuImg'] as String?;
    _nutriId = snapshotData['nutriId'] as String?;
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
    _polyunsaturatedFat =
        castToType<double>(snapshotData['polyunsaturatedFat']);
    _cholesterol = castToType<double>(snapshotData['cholesterol']);
    _sodium = castToType<double>(snapshotData['sodium']);
    _sugar = castToType<double>(snapshotData['sugar']);
    _dietaryFiber = castToType<double>(snapshotData['dietaryFiber']);
    _vitaminA = snapshotData['vitaminA'] as String?;
    _vitaminCDV = snapshotData['vitaminCDV'] as String?;
    _calcium = snapshotData['calcium'] as String?;
    _potassium = castToType<double>(snapshotData['potassium']);
    _iron = castToType<double>(snapshotData['iron']);
    _servingSize = castToType<double>(snapshotData['servingSize']);
    _numberofServing = castToType<double>(snapshotData['numberofServing']);
    _foodMenulmg = snapshotData['foodMenulmg'] as String?;
    _polyUnsaturatedFat =
        castToType<double>(snapshotData['polyUnsaturatedFat']);
    _vitA = snapshotData['vitA'] as String?;
    _vitCDV = snapshotData['vitCDV'] as String?;
    _numberOfServing = castToType<double>(snapshotData['numberOfServing']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mcdoApprovedCalorieMenu');

  static Stream<McdoApprovedCalorieMenuRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => McdoApprovedCalorieMenuRecord.fromSnapshot(s));

  static Future<McdoApprovedCalorieMenuRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => McdoApprovedCalorieMenuRecord.fromSnapshot(s));

  static McdoApprovedCalorieMenuRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      McdoApprovedCalorieMenuRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static McdoApprovedCalorieMenuRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      McdoApprovedCalorieMenuRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'McdoApprovedCalorieMenuRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is McdoApprovedCalorieMenuRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMcdoApprovedCalorieMenuRecordData({
  String? menuItem,
  String? restauName,
  String? foodMenuImg,
  String? nutriId,
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
  double? polyunsaturatedFat,
  double? cholesterol,
  double? sodium,
  double? sugar,
  double? dietaryFiber,
  String? vitaminA,
  String? vitaminCDV,
  String? calcium,
  double? potassium,
  double? iron,
  double? servingSize,
  double? numberofServing,
  String? foodMenulmg,
  double? polyUnsaturatedFat,
  String? vitA,
  String? vitCDV,
  double? numberOfServing,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'menuItem': menuItem,
      'restauName': restauName,
      'foodMenuImg': foodMenuImg,
      'nutriId': nutriId,
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
      'polyunsaturatedFat': polyunsaturatedFat,
      'cholesterol': cholesterol,
      'sodium': sodium,
      'sugar': sugar,
      'dietaryFiber': dietaryFiber,
      'vitaminA': vitaminA,
      'vitaminCDV': vitaminCDV,
      'calcium': calcium,
      'potassium': potassium,
      'iron': iron,
      'servingSize': servingSize,
      'numberofServing': numberofServing,
      'foodMenulmg': foodMenulmg,
      'polyUnsaturatedFat': polyUnsaturatedFat,
      'vitA': vitA,
      'vitCDV': vitCDV,
      'numberOfServing': numberOfServing,
    }.withoutNulls,
  );

  return firestoreData;
}

class McdoApprovedCalorieMenuRecordDocumentEquality
    implements Equality<McdoApprovedCalorieMenuRecord> {
  const McdoApprovedCalorieMenuRecordDocumentEquality();

  @override
  bool equals(
      McdoApprovedCalorieMenuRecord? e1, McdoApprovedCalorieMenuRecord? e2) {
    return e1?.menuItem == e2?.menuItem &&
        e1?.restauName == e2?.restauName &&
        e1?.foodMenuImg == e2?.foodMenuImg &&
        e1?.nutriId == e2?.nutriId &&
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
        e1?.polyunsaturatedFat == e2?.polyunsaturatedFat &&
        e1?.cholesterol == e2?.cholesterol &&
        e1?.sodium == e2?.sodium &&
        e1?.sugar == e2?.sugar &&
        e1?.dietaryFiber == e2?.dietaryFiber &&
        e1?.vitaminA == e2?.vitaminA &&
        e1?.vitaminCDV == e2?.vitaminCDV &&
        e1?.calcium == e2?.calcium &&
        e1?.potassium == e2?.potassium &&
        e1?.iron == e2?.iron &&
        e1?.servingSize == e2?.servingSize &&
        e1?.numberofServing == e2?.numberofServing &&
        e1?.foodMenulmg == e2?.foodMenulmg &&
        e1?.polyUnsaturatedFat == e2?.polyUnsaturatedFat &&
        e1?.vitA == e2?.vitA &&
        e1?.vitCDV == e2?.vitCDV &&
        e1?.numberOfServing == e2?.numberOfServing;
  }

  @override
  int hash(McdoApprovedCalorieMenuRecord? e) => const ListEquality().hash([
        e?.menuItem,
        e?.restauName,
        e?.foodMenuImg,
        e?.nutriId,
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
        e?.polyunsaturatedFat,
        e?.cholesterol,
        e?.sodium,
        e?.sugar,
        e?.dietaryFiber,
        e?.vitaminA,
        e?.vitaminCDV,
        e?.calcium,
        e?.potassium,
        e?.iron,
        e?.servingSize,
        e?.numberofServing,
        e?.foodMenulmg,
        e?.polyUnsaturatedFat,
        e?.vitA,
        e?.vitCDV,
        e?.numberOfServing
      ]);

  @override
  bool isValidKey(Object? o) => o is McdoApprovedCalorieMenuRecord;
}
