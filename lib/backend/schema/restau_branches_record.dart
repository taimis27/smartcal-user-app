import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RestauBranchesRecord extends FirestoreRecord {
  RestauBranchesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "restauId" field.
  String? _restauId;
  String get restauId => _restauId ?? '';
  bool hasRestauId() => _restauId != null;

  // "branchName" field.
  String? _branchName;
  String get branchName => _branchName ?? '';
  bool hasBranchName() => _branchName != null;

  // "streetArea" field.
  String? _streetArea;
  String get streetArea => _streetArea ?? '';
  bool hasStreetArea() => _streetArea != null;

  // "cityAddress" field.
  String? _cityAddress;
  String get cityAddress => _cityAddress ?? '';
  bool hasCityAddress() => _cityAddress != null;

  // "googleMapLink" field.
  String? _googleMapLink;
  String get googleMapLink => _googleMapLink ?? '';
  bool hasGoogleMapLink() => _googleMapLink != null;

  void _initializeFields() {
    _restauId = snapshotData['restauId'] as String?;
    _branchName = snapshotData['branchName'] as String?;
    _streetArea = snapshotData['streetArea'] as String?;
    _cityAddress = snapshotData['cityAddress'] as String?;
    _googleMapLink = snapshotData['googleMapLink'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('restauBranches');

  static Stream<RestauBranchesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RestauBranchesRecord.fromSnapshot(s));

  static Future<RestauBranchesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RestauBranchesRecord.fromSnapshot(s));

  static RestauBranchesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RestauBranchesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RestauBranchesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RestauBranchesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RestauBranchesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RestauBranchesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRestauBranchesRecordData({
  String? restauId,
  String? branchName,
  String? streetArea,
  String? cityAddress,
  String? googleMapLink,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'restauId': restauId,
      'branchName': branchName,
      'streetArea': streetArea,
      'cityAddress': cityAddress,
      'googleMapLink': googleMapLink,
    }.withoutNulls,
  );

  return firestoreData;
}

class RestauBranchesRecordDocumentEquality
    implements Equality<RestauBranchesRecord> {
  const RestauBranchesRecordDocumentEquality();

  @override
  bool equals(RestauBranchesRecord? e1, RestauBranchesRecord? e2) {
    return e1?.restauId == e2?.restauId &&
        e1?.branchName == e2?.branchName &&
        e1?.streetArea == e2?.streetArea &&
        e1?.cityAddress == e2?.cityAddress &&
        e1?.googleMapLink == e2?.googleMapLink;
  }

  @override
  int hash(RestauBranchesRecord? e) => const ListEquality().hash([
        e?.restauId,
        e?.branchName,
        e?.streetArea,
        e?.cityAddress,
        e?.googleMapLink
      ]);

  @override
  bool isValidKey(Object? o) => o is RestauBranchesRecord;
}
