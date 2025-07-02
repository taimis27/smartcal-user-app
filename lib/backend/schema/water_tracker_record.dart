import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WaterTrackerRecord extends FirestoreRecord {
  WaterTrackerRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "waterIntake" field.
  int? _waterIntake;
  int get waterIntake => _waterIntake ?? 0;
  bool hasWaterIntake() => _waterIntake != null;

  // "waterGoal" field.
  int? _waterGoal;
  int get waterGoal => _waterGoal ?? 0;
  bool hasWaterGoal() => _waterGoal != null;

  // "entryDate" field.
  DateTime? _entryDate;
  DateTime? get entryDate => _entryDate;
  bool hasEntryDate() => _entryDate != null;

  // "uidWater" field.
  String? _uidWater;
  String get uidWater => _uidWater ?? '';
  bool hasUidWater() => _uidWater != null;

  // "totalIntake" field.
  double? _totalIntake;
  double get totalIntake => _totalIntake ?? 0.0;
  bool hasTotalIntake() => _totalIntake != null;

  // "intakeDate" field.
  String? _intakeDate;
  String get intakeDate => _intakeDate ?? '';
  bool hasIntakeDate() => _intakeDate != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _waterIntake = castToType<int>(snapshotData['waterIntake']);
    _waterGoal = castToType<int>(snapshotData['waterGoal']);
    _entryDate = snapshotData['entryDate'] as DateTime?;
    _uidWater = snapshotData['uidWater'] as String?;
    _totalIntake = castToType<double>(snapshotData['totalIntake']);
    _intakeDate = snapshotData['intakeDate'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('waterTracker');

  static Stream<WaterTrackerRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WaterTrackerRecord.fromSnapshot(s));

  static Future<WaterTrackerRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WaterTrackerRecord.fromSnapshot(s));

  static WaterTrackerRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WaterTrackerRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WaterTrackerRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WaterTrackerRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WaterTrackerRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WaterTrackerRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWaterTrackerRecordData({
  DocumentReference? user,
  int? waterIntake,
  int? waterGoal,
  DateTime? entryDate,
  String? uidWater,
  double? totalIntake,
  String? intakeDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'waterIntake': waterIntake,
      'waterGoal': waterGoal,
      'entryDate': entryDate,
      'uidWater': uidWater,
      'totalIntake': totalIntake,
      'intakeDate': intakeDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class WaterTrackerRecordDocumentEquality
    implements Equality<WaterTrackerRecord> {
  const WaterTrackerRecordDocumentEquality();

  @override
  bool equals(WaterTrackerRecord? e1, WaterTrackerRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.waterIntake == e2?.waterIntake &&
        e1?.waterGoal == e2?.waterGoal &&
        e1?.entryDate == e2?.entryDate &&
        e1?.uidWater == e2?.uidWater &&
        e1?.totalIntake == e2?.totalIntake &&
        e1?.intakeDate == e2?.intakeDate;
  }

  @override
  int hash(WaterTrackerRecord? e) => const ListEquality().hash([
        e?.user,
        e?.waterIntake,
        e?.waterGoal,
        e?.entryDate,
        e?.uidWater,
        e?.totalIntake,
        e?.intakeDate
      ]);

  @override
  bool isValidKey(Object? o) => o is WaterTrackerRecord;
}
