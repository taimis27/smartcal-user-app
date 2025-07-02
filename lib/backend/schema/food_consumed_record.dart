import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FoodConsumedRecord extends FirestoreRecord {
  FoodConsumedRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "foodName" field.
  String? _foodName;
  String get foodName => _foodName ?? '';
  bool hasFoodName() => _foodName != null;

  // "foodCal" field.
  double? _foodCal;
  double get foodCal => _foodCal ?? 0.0;
  bool hasFoodCal() => _foodCal != null;

  // "foodProtein" field.
  double? _foodProtein;
  double get foodProtein => _foodProtein ?? 0.0;
  bool hasFoodProtein() => _foodProtein != null;

  // "foodFat" field.
  double? _foodFat;
  double get foodFat => _foodFat ?? 0.0;
  bool hasFoodFat() => _foodFat != null;

  // "foodCarb" field.
  double? _foodCarb;
  double get foodCarb => _foodCarb ?? 0.0;
  bool hasFoodCarb() => _foodCarb != null;

  // "remainingCalorie" field.
  double? _remainingCalorie;
  double get remainingCalorie => _remainingCalorie ?? 0.0;
  bool hasRemainingCalorie() => _remainingCalorie != null;

  // "remark" field.
  String? _remark;
  String get remark => _remark ?? '';
  bool hasRemark() => _remark != null;

  // "isOverDailyCalorie" field.
  bool? _isOverDailyCalorie;
  bool get isOverDailyCalorie => _isOverDailyCalorie ?? false;
  bool hasIsOverDailyCalorie() => _isOverDailyCalorie != null;

  // "totalCalConsumed" field.
  double? _totalCalConsumed;
  double get totalCalConsumed => _totalCalConsumed ?? 0.0;
  bool hasTotalCalConsumed() => _totalCalConsumed != null;

  // "totalProteinConsumed" field.
  double? _totalProteinConsumed;
  double get totalProteinConsumed => _totalProteinConsumed ?? 0.0;
  bool hasTotalProteinConsumed() => _totalProteinConsumed != null;

  // "totalFatConsumed" field.
  double? _totalFatConsumed;
  double get totalFatConsumed => _totalFatConsumed ?? 0.0;
  bool hasTotalFatConsumed() => _totalFatConsumed != null;

  // "totalCarbConsumed" field.
  double? _totalCarbConsumed;
  double get totalCarbConsumed => _totalCarbConsumed ?? 0.0;
  bool hasTotalCarbConsumed() => _totalCarbConsumed != null;

  // "consumedDateTime" field.
  DateTime? _consumedDateTime;
  DateTime? get consumedDateTime => _consumedDateTime;
  bool hasConsumedDateTime() => _consumedDateTime != null;

  // "eatingCategory" field.
  String? _eatingCategory;
  String get eatingCategory => _eatingCategory ?? '';
  bool hasEatingCategory() => _eatingCategory != null;

  // "foodStatus" field.
  String? _foodStatus;
  String get foodStatus => _foodStatus ?? '';
  bool hasFoodStatus() => _foodStatus != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _foodName = snapshotData['foodName'] as String?;
    _foodCal = castToType<double>(snapshotData['foodCal']);
    _foodProtein = castToType<double>(snapshotData['foodProtein']);
    _foodFat = castToType<double>(snapshotData['foodFat']);
    _foodCarb = castToType<double>(snapshotData['foodCarb']);
    _remainingCalorie = castToType<double>(snapshotData['remainingCalorie']);
    _remark = snapshotData['remark'] as String?;
    _isOverDailyCalorie = snapshotData['isOverDailyCalorie'] as bool?;
    _totalCalConsumed = castToType<double>(snapshotData['totalCalConsumed']);
    _totalProteinConsumed =
        castToType<double>(snapshotData['totalProteinConsumed']);
    _totalFatConsumed = castToType<double>(snapshotData['totalFatConsumed']);
    _totalCarbConsumed = castToType<double>(snapshotData['totalCarbConsumed']);
    _consumedDateTime = snapshotData['consumedDateTime'] as DateTime?;
    _eatingCategory = snapshotData['eatingCategory'] as String?;
    _foodStatus = snapshotData['foodStatus'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('foodConsumed');

  static Stream<FoodConsumedRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FoodConsumedRecord.fromSnapshot(s));

  static Future<FoodConsumedRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FoodConsumedRecord.fromSnapshot(s));

  static FoodConsumedRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FoodConsumedRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FoodConsumedRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FoodConsumedRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FoodConsumedRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FoodConsumedRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFoodConsumedRecordData({
  DocumentReference? user,
  String? foodName,
  double? foodCal,
  double? foodProtein,
  double? foodFat,
  double? foodCarb,
  double? remainingCalorie,
  String? remark,
  bool? isOverDailyCalorie,
  double? totalCalConsumed,
  double? totalProteinConsumed,
  double? totalFatConsumed,
  double? totalCarbConsumed,
  DateTime? consumedDateTime,
  String? eatingCategory,
  String? foodStatus,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'foodName': foodName,
      'foodCal': foodCal,
      'foodProtein': foodProtein,
      'foodFat': foodFat,
      'foodCarb': foodCarb,
      'remainingCalorie': remainingCalorie,
      'remark': remark,
      'isOverDailyCalorie': isOverDailyCalorie,
      'totalCalConsumed': totalCalConsumed,
      'totalProteinConsumed': totalProteinConsumed,
      'totalFatConsumed': totalFatConsumed,
      'totalCarbConsumed': totalCarbConsumed,
      'consumedDateTime': consumedDateTime,
      'eatingCategory': eatingCategory,
      'foodStatus': foodStatus,
    }.withoutNulls,
  );

  return firestoreData;
}

class FoodConsumedRecordDocumentEquality
    implements Equality<FoodConsumedRecord> {
  const FoodConsumedRecordDocumentEquality();

  @override
  bool equals(FoodConsumedRecord? e1, FoodConsumedRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.foodName == e2?.foodName &&
        e1?.foodCal == e2?.foodCal &&
        e1?.foodProtein == e2?.foodProtein &&
        e1?.foodFat == e2?.foodFat &&
        e1?.foodCarb == e2?.foodCarb &&
        e1?.remainingCalorie == e2?.remainingCalorie &&
        e1?.remark == e2?.remark &&
        e1?.isOverDailyCalorie == e2?.isOverDailyCalorie &&
        e1?.totalCalConsumed == e2?.totalCalConsumed &&
        e1?.totalProteinConsumed == e2?.totalProteinConsumed &&
        e1?.totalFatConsumed == e2?.totalFatConsumed &&
        e1?.totalCarbConsumed == e2?.totalCarbConsumed &&
        e1?.consumedDateTime == e2?.consumedDateTime &&
        e1?.eatingCategory == e2?.eatingCategory &&
        e1?.foodStatus == e2?.foodStatus;
  }

  @override
  int hash(FoodConsumedRecord? e) => const ListEquality().hash([
        e?.user,
        e?.foodName,
        e?.foodCal,
        e?.foodProtein,
        e?.foodFat,
        e?.foodCarb,
        e?.remainingCalorie,
        e?.remark,
        e?.isOverDailyCalorie,
        e?.totalCalConsumed,
        e?.totalProteinConsumed,
        e?.totalFatConsumed,
        e?.totalCarbConsumed,
        e?.consumedDateTime,
        e?.eatingCategory,
        e?.foodStatus
      ]);

  @override
  bool isValidKey(Object? o) => o is FoodConsumedRecord;
}
