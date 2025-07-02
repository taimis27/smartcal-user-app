import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserFeedbackRecord extends FirestoreRecord {
  UserFeedbackRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "reason" field.
  String? _reason;
  String get reason => _reason ?? '';
  bool hasReason() => _reason != null;

  // "feedback" field.
  String? _feedback;
  String get feedback => _feedback ?? '';
  bool hasFeedback() => _feedback != null;

  // "submittedTimeDate" field.
  DateTime? _submittedTimeDate;
  DateTime? get submittedTimeDate => _submittedTimeDate;
  bool hasSubmittedTimeDate() => _submittedTimeDate != null;

  // "rating" field.
  int? _rating;
  int get rating => _rating ?? 0;
  bool hasRating() => _rating != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _username = snapshotData['username'] as String?;
    _reason = snapshotData['reason'] as String?;
    _feedback = snapshotData['feedback'] as String?;
    _submittedTimeDate = snapshotData['submittedTimeDate'] as DateTime?;
    _rating = castToType<int>(snapshotData['rating']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userFeedback');

  static Stream<UserFeedbackRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserFeedbackRecord.fromSnapshot(s));

  static Future<UserFeedbackRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserFeedbackRecord.fromSnapshot(s));

  static UserFeedbackRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserFeedbackRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserFeedbackRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserFeedbackRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserFeedbackRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserFeedbackRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserFeedbackRecordData({
  DocumentReference? user,
  String? username,
  String? reason,
  String? feedback,
  DateTime? submittedTimeDate,
  int? rating,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'username': username,
      'reason': reason,
      'feedback': feedback,
      'submittedTimeDate': submittedTimeDate,
      'rating': rating,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserFeedbackRecordDocumentEquality
    implements Equality<UserFeedbackRecord> {
  const UserFeedbackRecordDocumentEquality();

  @override
  bool equals(UserFeedbackRecord? e1, UserFeedbackRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.username == e2?.username &&
        e1?.reason == e2?.reason &&
        e1?.feedback == e2?.feedback &&
        e1?.submittedTimeDate == e2?.submittedTimeDate &&
        e1?.rating == e2?.rating;
  }

  @override
  int hash(UserFeedbackRecord? e) => const ListEquality().hash([
        e?.user,
        e?.username,
        e?.reason,
        e?.feedback,
        e?.submittedTimeDate,
        e?.rating
      ]);

  @override
  bool isValidKey(Object? o) => o is UserFeedbackRecord;
}
