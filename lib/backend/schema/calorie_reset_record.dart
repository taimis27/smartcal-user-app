import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CalorieResetRecord extends FirestoreRecord {
  CalorieResetRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "current" field.
  String? _current;
  String get current => _current ?? '';
  bool hasCurrent() => _current != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _current = snapshotData['current'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('calorieReset');

  static Stream<CalorieResetRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CalorieResetRecord.fromSnapshot(s));

  static Future<CalorieResetRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CalorieResetRecord.fromSnapshot(s));

  static CalorieResetRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CalorieResetRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CalorieResetRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CalorieResetRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CalorieResetRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CalorieResetRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCalorieResetRecordData({
  DocumentReference? user,
  String? current,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'current': current,
    }.withoutNulls,
  );

  return firestoreData;
}

class CalorieResetRecordDocumentEquality
    implements Equality<CalorieResetRecord> {
  const CalorieResetRecordDocumentEquality();

  @override
  bool equals(CalorieResetRecord? e1, CalorieResetRecord? e2) {
    return e1?.user == e2?.user && e1?.current == e2?.current;
  }

  @override
  int hash(CalorieResetRecord? e) =>
      const ListEquality().hash([e?.user, e?.current]);

  @override
  bool isValidKey(Object? o) => o is CalorieResetRecord;
}
