import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserDietaryPreferencesRecord extends FirestoreRecord {
  UserDietaryPreferencesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "allergies" field.
  String? _allergies;
  String get allergies => _allergies ?? '';
  bool hasAllergies() => _allergies != null;

  // "intolerances" field.
  String? _intolerances;
  String get intolerances => _intolerances ?? '';
  bool hasIntolerances() => _intolerances != null;

  // "existingConditions" field.
  String? _existingConditions;
  String get existingConditions => _existingConditions ?? '';
  bool hasExistingConditions() => _existingConditions != null;

  // "religiousRestriction" field.
  String? _religiousRestriction;
  String get religiousRestriction => _religiousRestriction ?? '';
  bool hasReligiousRestriction() => _religiousRestriction != null;

  // "foodNotAllowed" field.
  List<String>? _foodNotAllowed;
  List<String> get foodNotAllowed => _foodNotAllowed ?? const [];
  bool hasFoodNotAllowed() => _foodNotAllowed != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _allergies = snapshotData['allergies'] as String?;
    _intolerances = snapshotData['intolerances'] as String?;
    _existingConditions = snapshotData['existingConditions'] as String?;
    _religiousRestriction = snapshotData['religiousRestriction'] as String?;
    _foodNotAllowed = getDataList(snapshotData['foodNotAllowed']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userDietaryPreferences');

  static Stream<UserDietaryPreferencesRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => UserDietaryPreferencesRecord.fromSnapshot(s));

  static Future<UserDietaryPreferencesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => UserDietaryPreferencesRecord.fromSnapshot(s));

  static UserDietaryPreferencesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserDietaryPreferencesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserDietaryPreferencesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserDietaryPreferencesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserDietaryPreferencesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserDietaryPreferencesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserDietaryPreferencesRecordData({
  DocumentReference? user,
  String? allergies,
  String? intolerances,
  String? existingConditions,
  String? religiousRestriction,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'allergies': allergies,
      'intolerances': intolerances,
      'existingConditions': existingConditions,
      'religiousRestriction': religiousRestriction,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserDietaryPreferencesRecordDocumentEquality
    implements Equality<UserDietaryPreferencesRecord> {
  const UserDietaryPreferencesRecordDocumentEquality();

  @override
  bool equals(
      UserDietaryPreferencesRecord? e1, UserDietaryPreferencesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.user == e2?.user &&
        e1?.allergies == e2?.allergies &&
        e1?.intolerances == e2?.intolerances &&
        e1?.existingConditions == e2?.existingConditions &&
        e1?.religiousRestriction == e2?.religiousRestriction &&
        listEquality.equals(e1?.foodNotAllowed, e2?.foodNotAllowed);
  }

  @override
  int hash(UserDietaryPreferencesRecord? e) => const ListEquality().hash([
        e?.user,
        e?.allergies,
        e?.intolerances,
        e?.existingConditions,
        e?.religiousRestriction,
        e?.foodNotAllowed
      ]);

  @override
  bool isValidKey(Object? o) => o is UserDietaryPreferencesRecord;
}
