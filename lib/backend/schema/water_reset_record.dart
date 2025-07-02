import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WaterResetRecord extends FirestoreRecord {
  WaterResetRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "currentW" field.
  String? _currentW;
  String get currentW => _currentW ?? '';
  bool hasCurrentW() => _currentW != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _currentW = snapshotData['currentW'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('waterReset');

  static Stream<WaterResetRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WaterResetRecord.fromSnapshot(s));

  static Future<WaterResetRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WaterResetRecord.fromSnapshot(s));

  static WaterResetRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WaterResetRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WaterResetRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WaterResetRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WaterResetRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WaterResetRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWaterResetRecordData({
  DocumentReference? user,
  String? currentW,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'currentW': currentW,
    }.withoutNulls,
  );

  return firestoreData;
}

class WaterResetRecordDocumentEquality implements Equality<WaterResetRecord> {
  const WaterResetRecordDocumentEquality();

  @override
  bool equals(WaterResetRecord? e1, WaterResetRecord? e2) {
    return e1?.user == e2?.user && e1?.currentW == e2?.currentW;
  }

  @override
  int hash(WaterResetRecord? e) =>
      const ListEquality().hash([e?.user, e?.currentW]);

  @override
  bool isValidKey(Object? o) => o is WaterResetRecord;
}
