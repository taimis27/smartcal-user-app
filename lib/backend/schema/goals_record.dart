import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GoalsRecord extends FirestoreRecord {
  GoalsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "goalWeight" field.
  double? _goalWeight;
  double get goalWeight => _goalWeight ?? 0.0;
  bool hasGoalWeight() => _goalWeight != null;

  // "activityLevel" field.
  String? _activityLevel;
  String get activityLevel => _activityLevel ?? '';
  bool hasActivityLevel() => _activityLevel != null;

  // "calGoal" field.
  double? _calGoal;
  double get calGoal => _calGoal ?? 0.0;
  bool hasCalGoal() => _calGoal != null;

  // "carbGoal" field.
  double? _carbGoal;
  double get carbGoal => _carbGoal ?? 0.0;
  bool hasCarbGoal() => _carbGoal != null;

  // "proteinGoal" field.
  double? _proteinGoal;
  double get proteinGoal => _proteinGoal ?? 0.0;
  bool hasProteinGoal() => _proteinGoal != null;

  // "fatGoal" field.
  double? _fatGoal;
  double get fatGoal => _fatGoal ?? 0.0;
  bool hasFatGoal() => _fatGoal != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _goalWeight = castToType<double>(snapshotData['goalWeight']);
    _activityLevel = snapshotData['activityLevel'] as String?;
    _calGoal = castToType<double>(snapshotData['calGoal']);
    _carbGoal = castToType<double>(snapshotData['carbGoal']);
    _proteinGoal = castToType<double>(snapshotData['proteinGoal']);
    _fatGoal = castToType<double>(snapshotData['fatGoal']);
    _uid = snapshotData['uid'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('goals');

  static Stream<GoalsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GoalsRecord.fromSnapshot(s));

  static Future<GoalsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GoalsRecord.fromSnapshot(s));

  static GoalsRecord fromSnapshot(DocumentSnapshot snapshot) => GoalsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GoalsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GoalsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GoalsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GoalsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGoalsRecordData({
  double? goalWeight,
  String? activityLevel,
  double? calGoal,
  double? carbGoal,
  double? proteinGoal,
  double? fatGoal,
  DocumentReference? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'goalWeight': goalWeight,
      'activityLevel': activityLevel,
      'calGoal': calGoal,
      'carbGoal': carbGoal,
      'proteinGoal': proteinGoal,
      'fatGoal': fatGoal,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class GoalsRecordDocumentEquality implements Equality<GoalsRecord> {
  const GoalsRecordDocumentEquality();

  @override
  bool equals(GoalsRecord? e1, GoalsRecord? e2) {
    return e1?.goalWeight == e2?.goalWeight &&
        e1?.activityLevel == e2?.activityLevel &&
        e1?.calGoal == e2?.calGoal &&
        e1?.carbGoal == e2?.carbGoal &&
        e1?.proteinGoal == e2?.proteinGoal &&
        e1?.fatGoal == e2?.fatGoal &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(GoalsRecord? e) => const ListEquality().hash([
        e?.goalWeight,
        e?.activityLevel,
        e?.calGoal,
        e?.carbGoal,
        e?.proteinGoal,
        e?.fatGoal,
        e?.uid
      ]);

  @override
  bool isValidKey(Object? o) => o is GoalsRecord;
}
