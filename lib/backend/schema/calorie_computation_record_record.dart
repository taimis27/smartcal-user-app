import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CalorieComputationRecordRecord extends FirestoreRecord {
  CalorieComputationRecordRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "bmr" field.
  double? _bmr;
  double get bmr => _bmr ?? 0.0;
  bool hasBmr() => _bmr != null;

  // "height" field.
  double? _height;
  double get height => _height ?? 0.0;
  bool hasHeight() => _height != null;

  // "weight" field.
  double? _weight;
  double get weight => _weight ?? 0.0;
  bool hasWeight() => _weight != null;

  // "addedDate" field.
  DateTime? _addedDate;
  DateTime? get addedDate => _addedDate;
  bool hasAddedDate() => _addedDate != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _bmr = castToType<double>(snapshotData['bmr']);
    _height = castToType<double>(snapshotData['height']);
    _weight = castToType<double>(snapshotData['weight']);
    _addedDate = snapshotData['addedDate'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('calorieComputationRecord');

  static Stream<CalorieComputationRecordRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => CalorieComputationRecordRecord.fromSnapshot(s));

  static Future<CalorieComputationRecordRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CalorieComputationRecordRecord.fromSnapshot(s));

  static CalorieComputationRecordRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      CalorieComputationRecordRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CalorieComputationRecordRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CalorieComputationRecordRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CalorieComputationRecordRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CalorieComputationRecordRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCalorieComputationRecordRecordData({
  DocumentReference? user,
  double? bmr,
  double? height,
  double? weight,
  DateTime? addedDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'bmr': bmr,
      'height': height,
      'weight': weight,
      'addedDate': addedDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class CalorieComputationRecordRecordDocumentEquality
    implements Equality<CalorieComputationRecordRecord> {
  const CalorieComputationRecordRecordDocumentEquality();

  @override
  bool equals(
      CalorieComputationRecordRecord? e1, CalorieComputationRecordRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.bmr == e2?.bmr &&
        e1?.height == e2?.height &&
        e1?.weight == e2?.weight &&
        e1?.addedDate == e2?.addedDate;
  }

  @override
  int hash(CalorieComputationRecordRecord? e) => const ListEquality()
      .hash([e?.user, e?.bmr, e?.height, e?.weight, e?.addedDate]);

  @override
  bool isValidKey(Object? o) => o is CalorieComputationRecordRecord;
}
