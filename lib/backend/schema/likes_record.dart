import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LikesRecord extends FirestoreRecord {
  LikesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nutriDets" field.
  bool? _nutriDets;
  bool get nutriDets => _nutriDets ?? false;
  bool hasNutriDets() => _nutriDets != null;

  // "foodInfo" field.
  bool? _foodInfo;
  bool get foodInfo => _foodInfo ?? false;
  bool hasFoodInfo() => _foodInfo != null;

  // "restInfo" field.
  bool? _restInfo;
  bool get restInfo => _restInfo ?? false;
  bool hasRestInfo() => _restInfo != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _nutriDets = snapshotData['nutriDets'] as bool?;
    _foodInfo = snapshotData['foodInfo'] as bool?;
    _restInfo = snapshotData['restInfo'] as bool?;
    _uid = snapshotData['uid'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('likes');

  static Stream<LikesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LikesRecord.fromSnapshot(s));

  static Future<LikesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LikesRecord.fromSnapshot(s));

  static LikesRecord fromSnapshot(DocumentSnapshot snapshot) => LikesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LikesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LikesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LikesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LikesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLikesRecordData({
  bool? nutriDets,
  bool? foodInfo,
  bool? restInfo,
  DocumentReference? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nutriDets': nutriDets,
      'foodInfo': foodInfo,
      'restInfo': restInfo,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class LikesRecordDocumentEquality implements Equality<LikesRecord> {
  const LikesRecordDocumentEquality();

  @override
  bool equals(LikesRecord? e1, LikesRecord? e2) {
    return e1?.nutriDets == e2?.nutriDets &&
        e1?.foodInfo == e2?.foodInfo &&
        e1?.restInfo == e2?.restInfo &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(LikesRecord? e) => const ListEquality()
      .hash([e?.nutriDets, e?.foodInfo, e?.restInfo, e?.uid]);

  @override
  bool isValidKey(Object? o) => o is LikesRecord;
}
