import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BmiRecord extends FirestoreRecord {
  BmiRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  // "height" field.
  double? _height;
  double get height => _height ?? 0.0;
  bool hasHeight() => _height != null;

  // "weight" field.
  double? _weight;
  double get weight => _weight ?? 0.0;
  bool hasWeight() => _weight != null;

  // "computedBMI" field.
  double? _computedBMI;
  double get computedBMI => _computedBMI ?? 0.0;
  bool hasComputedBMI() => _computedBMI != null;

  // "bmiCategory" field.
  String? _bmiCategory;
  String get bmiCategory => _bmiCategory ?? '';
  bool hasBmiCategory() => _bmiCategory != null;

  // "computedDateTime" field.
  String? _computedDateTime;
  String get computedDateTime => _computedDateTime ?? '';
  bool hasComputedDateTime() => _computedDateTime != null;

  // "pendoral" field.
  double? _pendoral;
  double get pendoral => _pendoral ?? 0.0;
  bool hasPendoral() => _pendoral != null;

  // "computedDate" field.
  String? _computedDate;
  String get computedDate => _computedDate ?? '';
  bool hasComputedDate() => _computedDate != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as DocumentReference?;
    _height = castToType<double>(snapshotData['height']);
    _weight = castToType<double>(snapshotData['weight']);
    _computedBMI = castToType<double>(snapshotData['computedBMI']);
    _bmiCategory = snapshotData['bmiCategory'] as String?;
    _computedDateTime = snapshotData['computedDateTime'] as String?;
    _pendoral = castToType<double>(snapshotData['pendoral']);
    _computedDate = snapshotData['computedDate'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bmi');

  static Stream<BmiRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BmiRecord.fromSnapshot(s));

  static Future<BmiRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BmiRecord.fromSnapshot(s));

  static BmiRecord fromSnapshot(DocumentSnapshot snapshot) => BmiRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BmiRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BmiRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BmiRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BmiRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBmiRecordData({
  DocumentReference? uid,
  double? height,
  double? weight,
  double? computedBMI,
  String? bmiCategory,
  String? computedDateTime,
  double? pendoral,
  String? computedDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'height': height,
      'weight': weight,
      'computedBMI': computedBMI,
      'bmiCategory': bmiCategory,
      'computedDateTime': computedDateTime,
      'pendoral': pendoral,
      'computedDate': computedDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class BmiRecordDocumentEquality implements Equality<BmiRecord> {
  const BmiRecordDocumentEquality();

  @override
  bool equals(BmiRecord? e1, BmiRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.height == e2?.height &&
        e1?.weight == e2?.weight &&
        e1?.computedBMI == e2?.computedBMI &&
        e1?.bmiCategory == e2?.bmiCategory &&
        e1?.computedDateTime == e2?.computedDateTime &&
        e1?.pendoral == e2?.pendoral &&
        e1?.computedDate == e2?.computedDate;
  }

  @override
  int hash(BmiRecord? e) => const ListEquality().hash([
        e?.uid,
        e?.height,
        e?.weight,
        e?.computedBMI,
        e?.bmiCategory,
        e?.computedDateTime,
        e?.pendoral,
        e?.computedDate
      ]);

  @override
  bool isValidKey(Object? o) => o is BmiRecord;
}
