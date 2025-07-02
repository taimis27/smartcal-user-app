import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BodyFatRecord extends FirestoreRecord {
  BodyFatRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "neck" field.
  double? _neck;
  double get neck => _neck ?? 0.0;
  bool hasNeck() => _neck != null;

  // "waist" field.
  double? _waist;
  double get waist => _waist ?? 0.0;
  bool hasWaist() => _waist != null;

  // "hips" field.
  double? _hips;
  double get hips => _hips ?? 0.0;
  bool hasHips() => _hips != null;

  // "bodyFat" field.
  double? _bodyFat;
  double get bodyFat => _bodyFat ?? 0.0;
  bool hasBodyFat() => _bodyFat != null;

  // "fatMass" field.
  double? _fatMass;
  double get fatMass => _fatMass ?? 0.0;
  bool hasFatMass() => _fatMass != null;

  // "LeanMass" field.
  double? _leanMass;
  double get leanMass => _leanMass ?? 0.0;
  bool hasLeanMass() => _leanMass != null;

  // "dateTime" field.
  DateTime? _dateTime;
  DateTime? get dateTime => _dateTime;
  bool hasDateTime() => _dateTime != null;

  // "bodyFatCategory" field.
  String? _bodyFatCategory;
  String get bodyFatCategory => _bodyFatCategory ?? '';
  bool hasBodyFatCategory() => _bodyFatCategory != null;

  // "idealBodyFatAge" field.
  double? _idealBodyFatAge;
  double get idealBodyFatAge => _idealBodyFatAge ?? 0.0;
  bool hasIdealBodyFatAge() => _idealBodyFatAge != null;

  // "reducedBodyFatNeeded" field.
  double? _reducedBodyFatNeeded;
  double get reducedBodyFatNeeded => _reducedBodyFatNeeded ?? 0.0;
  bool hasReducedBodyFatNeeded() => _reducedBodyFatNeeded != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _neck = castToType<double>(snapshotData['neck']);
    _waist = castToType<double>(snapshotData['waist']);
    _hips = castToType<double>(snapshotData['hips']);
    _bodyFat = castToType<double>(snapshotData['bodyFat']);
    _fatMass = castToType<double>(snapshotData['fatMass']);
    _leanMass = castToType<double>(snapshotData['LeanMass']);
    _dateTime = snapshotData['dateTime'] as DateTime?;
    _bodyFatCategory = snapshotData['bodyFatCategory'] as String?;
    _idealBodyFatAge = castToType<double>(snapshotData['idealBodyFatAge']);
    _reducedBodyFatNeeded =
        castToType<double>(snapshotData['reducedBodyFatNeeded']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bodyFat');

  static Stream<BodyFatRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BodyFatRecord.fromSnapshot(s));

  static Future<BodyFatRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BodyFatRecord.fromSnapshot(s));

  static BodyFatRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BodyFatRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BodyFatRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BodyFatRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BodyFatRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BodyFatRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBodyFatRecordData({
  DocumentReference? user,
  double? neck,
  double? waist,
  double? hips,
  double? bodyFat,
  double? fatMass,
  double? leanMass,
  DateTime? dateTime,
  String? bodyFatCategory,
  double? idealBodyFatAge,
  double? reducedBodyFatNeeded,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'neck': neck,
      'waist': waist,
      'hips': hips,
      'bodyFat': bodyFat,
      'fatMass': fatMass,
      'LeanMass': leanMass,
      'dateTime': dateTime,
      'bodyFatCategory': bodyFatCategory,
      'idealBodyFatAge': idealBodyFatAge,
      'reducedBodyFatNeeded': reducedBodyFatNeeded,
    }.withoutNulls,
  );

  return firestoreData;
}

class BodyFatRecordDocumentEquality implements Equality<BodyFatRecord> {
  const BodyFatRecordDocumentEquality();

  @override
  bool equals(BodyFatRecord? e1, BodyFatRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.neck == e2?.neck &&
        e1?.waist == e2?.waist &&
        e1?.hips == e2?.hips &&
        e1?.bodyFat == e2?.bodyFat &&
        e1?.fatMass == e2?.fatMass &&
        e1?.leanMass == e2?.leanMass &&
        e1?.dateTime == e2?.dateTime &&
        e1?.bodyFatCategory == e2?.bodyFatCategory &&
        e1?.idealBodyFatAge == e2?.idealBodyFatAge &&
        e1?.reducedBodyFatNeeded == e2?.reducedBodyFatNeeded;
  }

  @override
  int hash(BodyFatRecord? e) => const ListEquality().hash([
        e?.user,
        e?.neck,
        e?.waist,
        e?.hips,
        e?.bodyFat,
        e?.fatMass,
        e?.leanMass,
        e?.dateTime,
        e?.bodyFatCategory,
        e?.idealBodyFatAge,
        e?.reducedBodyFatNeeded
      ]);

  @override
  bool isValidKey(Object? o) => o is BodyFatRecord;
}
