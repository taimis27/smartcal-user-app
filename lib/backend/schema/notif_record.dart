import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotifRecord extends FirestoreRecord {
  NotifRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as DocumentReference?;
    _isActive = snapshotData['isActive'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notif');

  static Stream<NotifRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotifRecord.fromSnapshot(s));

  static Future<NotifRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotifRecord.fromSnapshot(s));

  static NotifRecord fromSnapshot(DocumentSnapshot snapshot) => NotifRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotifRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotifRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotifRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotifRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotifRecordData({
  DocumentReference? uid,
  bool? isActive,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'isActive': isActive,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotifRecordDocumentEquality implements Equality<NotifRecord> {
  const NotifRecordDocumentEquality();

  @override
  bool equals(NotifRecord? e1, NotifRecord? e2) {
    return e1?.uid == e2?.uid && e1?.isActive == e2?.isActive;
  }

  @override
  int hash(NotifRecord? e) => const ListEquality().hash([e?.uid, e?.isActive]);

  @override
  bool isValidKey(Object? o) => o is NotifRecord;
}
