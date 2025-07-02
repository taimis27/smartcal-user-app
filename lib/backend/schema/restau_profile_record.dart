import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RestauProfileRecord extends FirestoreRecord {
  RestauProfileRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "restauId" field.
  String? _restauId;
  String get restauId => _restauId ?? '';
  bool hasRestauId() => _restauId != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  bool hasLogo() => _logo != null;

  // "coverPhoto" field.
  String? _coverPhoto;
  String get coverPhoto => _coverPhoto ?? '';
  bool hasCoverPhoto() => _coverPhoto != null;

  // "restauName" field.
  String? _restauName;
  String get restauName => _restauName ?? '';
  bool hasRestauName() => _restauName != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "facebookLink" field.
  String? _facebookLink;
  String get facebookLink => _facebookLink ?? '';
  bool hasFacebookLink() => _facebookLink != null;

  // "instagramLink" field.
  String? _instagramLink;
  String get instagramLink => _instagramLink ?? '';
  bool hasInstagramLink() => _instagramLink != null;

  // "xLink" field.
  String? _xLink;
  String get xLink => _xLink ?? '';
  bool hasXLink() => _xLink != null;

  // "Location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  void _initializeFields() {
    _restauId = snapshotData['restauId'] as String?;
    _logo = snapshotData['logo'] as String?;
    _coverPhoto = snapshotData['coverPhoto'] as String?;
    _restauName = snapshotData['restauName'] as String?;
    _description = snapshotData['Description'] as String?;
    _facebookLink = snapshotData['facebookLink'] as String?;
    _instagramLink = snapshotData['instagramLink'] as String?;
    _xLink = snapshotData['xLink'] as String?;
    _location = snapshotData['Location'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('restauProfile');

  static Stream<RestauProfileRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RestauProfileRecord.fromSnapshot(s));

  static Future<RestauProfileRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RestauProfileRecord.fromSnapshot(s));

  static RestauProfileRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RestauProfileRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RestauProfileRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RestauProfileRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RestauProfileRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RestauProfileRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRestauProfileRecordData({
  String? restauId,
  String? logo,
  String? coverPhoto,
  String? restauName,
  String? description,
  String? facebookLink,
  String? instagramLink,
  String? xLink,
  String? location,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'restauId': restauId,
      'logo': logo,
      'coverPhoto': coverPhoto,
      'restauName': restauName,
      'Description': description,
      'facebookLink': facebookLink,
      'instagramLink': instagramLink,
      'xLink': xLink,
      'Location': location,
    }.withoutNulls,
  );

  return firestoreData;
}

class RestauProfileRecordDocumentEquality
    implements Equality<RestauProfileRecord> {
  const RestauProfileRecordDocumentEquality();

  @override
  bool equals(RestauProfileRecord? e1, RestauProfileRecord? e2) {
    return e1?.restauId == e2?.restauId &&
        e1?.logo == e2?.logo &&
        e1?.coverPhoto == e2?.coverPhoto &&
        e1?.restauName == e2?.restauName &&
        e1?.description == e2?.description &&
        e1?.facebookLink == e2?.facebookLink &&
        e1?.instagramLink == e2?.instagramLink &&
        e1?.xLink == e2?.xLink &&
        e1?.location == e2?.location;
  }

  @override
  int hash(RestauProfileRecord? e) => const ListEquality().hash([
        e?.restauId,
        e?.logo,
        e?.coverPhoto,
        e?.restauName,
        e?.description,
        e?.facebookLink,
        e?.instagramLink,
        e?.xLink,
        e?.location
      ]);

  @override
  bool isValidKey(Object? o) => o is RestauProfileRecord;
}
