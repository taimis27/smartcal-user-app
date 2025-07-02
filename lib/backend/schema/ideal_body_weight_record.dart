import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IdealBodyWeightRecord extends FirestoreRecord {
  IdealBodyWeightRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "height" field.
  double? _height;
  double get height => _height ?? 0.0;
  bool hasHeight() => _height != null;

  // "sex" field.
  String? _sex;
  String get sex => _sex ?? '';
  bool hasSex() => _sex != null;

  // "hamwiIW" field.
  double? _hamwiIW;
  double get hamwiIW => _hamwiIW ?? 0.0;
  bool hasHamwiIW() => _hamwiIW != null;

  // "devineIW" field.
  double? _devineIW;
  double get devineIW => _devineIW ?? 0.0;
  bool hasDevineIW() => _devineIW != null;

  // "robinsonIw" field.
  double? _robinsonIw;
  double get robinsonIw => _robinsonIw ?? 0.0;
  bool hasRobinsonIw() => _robinsonIw != null;

  // "millerIW" field.
  double? _millerIW;
  double get millerIW => _millerIW ?? 0.0;
  bool hasMillerIW() => _millerIW != null;

  // "dateTimeAdded" field.
  DateTime? _dateTimeAdded;
  DateTime? get dateTimeAdded => _dateTimeAdded;
  bool hasDateTimeAdded() => _dateTimeAdded != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _height = castToType<double>(snapshotData['height']);
    _sex = snapshotData['sex'] as String?;
    _hamwiIW = castToType<double>(snapshotData['hamwiIW']);
    _devineIW = castToType<double>(snapshotData['devineIW']);
    _robinsonIw = castToType<double>(snapshotData['robinsonIw']);
    _millerIW = castToType<double>(snapshotData['millerIW']);
    _dateTimeAdded = snapshotData['dateTimeAdded'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('idealBodyWeight');

  static Stream<IdealBodyWeightRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => IdealBodyWeightRecord.fromSnapshot(s));

  static Future<IdealBodyWeightRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => IdealBodyWeightRecord.fromSnapshot(s));

  static IdealBodyWeightRecord fromSnapshot(DocumentSnapshot snapshot) =>
      IdealBodyWeightRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IdealBodyWeightRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IdealBodyWeightRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IdealBodyWeightRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is IdealBodyWeightRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createIdealBodyWeightRecordData({
  DocumentReference? user,
  double? height,
  String? sex,
  double? hamwiIW,
  double? devineIW,
  double? robinsonIw,
  double? millerIW,
  DateTime? dateTimeAdded,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'height': height,
      'sex': sex,
      'hamwiIW': hamwiIW,
      'devineIW': devineIW,
      'robinsonIw': robinsonIw,
      'millerIW': millerIW,
      'dateTimeAdded': dateTimeAdded,
    }.withoutNulls,
  );

  return firestoreData;
}

class IdealBodyWeightRecordDocumentEquality
    implements Equality<IdealBodyWeightRecord> {
  const IdealBodyWeightRecordDocumentEquality();

  @override
  bool equals(IdealBodyWeightRecord? e1, IdealBodyWeightRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.height == e2?.height &&
        e1?.sex == e2?.sex &&
        e1?.hamwiIW == e2?.hamwiIW &&
        e1?.devineIW == e2?.devineIW &&
        e1?.robinsonIw == e2?.robinsonIw &&
        e1?.millerIW == e2?.millerIW &&
        e1?.dateTimeAdded == e2?.dateTimeAdded;
  }

  @override
  int hash(IdealBodyWeightRecord? e) => const ListEquality().hash([
        e?.user,
        e?.height,
        e?.sex,
        e?.hamwiIW,
        e?.devineIW,
        e?.robinsonIw,
        e?.millerIW,
        e?.dateTimeAdded
      ]);

  @override
  bool isValidKey(Object? o) => o is IdealBodyWeightRecord;
}
