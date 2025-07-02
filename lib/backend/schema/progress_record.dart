import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProgressRecord extends FirestoreRecord {
  ProgressRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  // "newHeight" field.
  double? _newHeight;
  double get newHeight => _newHeight ?? 0.0;
  bool hasNewHeight() => _newHeight != null;

  // "newWeight" field.
  double? _newWeight;
  double get newWeight => _newWeight ?? 0.0;
  bool hasNewWeight() => _newWeight != null;

  // "entryDate" field.
  DateTime? _entryDate;
  DateTime? get entryDate => _entryDate;
  bool hasEntryDate() => _entryDate != null;

  // "newBMI" field.
  double? _newBMI;
  double get newBMI => _newBMI ?? 0.0;
  bool hasNewBMI() => _newBMI != null;

  // "stringDate" field.
  String? _stringDate;
  String get stringDate => _stringDate ?? '';
  bool hasStringDate() => _stringDate != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as DocumentReference?;
    _newHeight = castToType<double>(snapshotData['newHeight']);
    _newWeight = castToType<double>(snapshotData['newWeight']);
    _entryDate = snapshotData['entryDate'] as DateTime?;
    _newBMI = castToType<double>(snapshotData['newBMI']);
    _stringDate = snapshotData['stringDate'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('progress');

  static Stream<ProgressRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProgressRecord.fromSnapshot(s));

  static Future<ProgressRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProgressRecord.fromSnapshot(s));

  static ProgressRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProgressRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProgressRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProgressRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProgressRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProgressRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProgressRecordData({
  DocumentReference? uid,
  double? newHeight,
  double? newWeight,
  DateTime? entryDate,
  double? newBMI,
  String? stringDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'newHeight': newHeight,
      'newWeight': newWeight,
      'entryDate': entryDate,
      'newBMI': newBMI,
      'stringDate': stringDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProgressRecordDocumentEquality implements Equality<ProgressRecord> {
  const ProgressRecordDocumentEquality();

  @override
  bool equals(ProgressRecord? e1, ProgressRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.newHeight == e2?.newHeight &&
        e1?.newWeight == e2?.newWeight &&
        e1?.entryDate == e2?.entryDate &&
        e1?.newBMI == e2?.newBMI &&
        e1?.stringDate == e2?.stringDate;
  }

  @override
  int hash(ProgressRecord? e) => const ListEquality().hash([
        e?.uid,
        e?.newHeight,
        e?.newWeight,
        e?.entryDate,
        e?.newBMI,
        e?.stringDate
      ]);

  @override
  bool isValidKey(Object? o) => o is ProgressRecord;
}
