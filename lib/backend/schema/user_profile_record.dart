import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserProfileRecord extends FirestoreRecord {
  UserProfileRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "lastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "sex" field.
  String? _sex;
  String get sex => _sex ?? '';
  bool hasSex() => _sex != null;

  // "birthdate" field.
  DateTime? _birthdate;
  DateTime? get birthdate => _birthdate;
  bool hasBirthdate() => _birthdate != null;

  // "bodyCategory" field.
  String? _bodyCategory;
  String get bodyCategory => _bodyCategory ?? '';
  bool hasBodyCategory() => _bodyCategory != null;

  // "activtyLevel" field.
  String? _activtyLevel;
  String get activtyLevel => _activtyLevel ?? '';
  bool hasActivtyLevel() => _activtyLevel != null;

  // "height" field.
  double? _height;
  double get height => _height ?? 0.0;
  bool hasHeight() => _height != null;

  // "weight" field.
  double? _weight;
  double get weight => _weight ?? 0.0;
  bool hasWeight() => _weight != null;

  // "weightGoal" field.
  double? _weightGoal;
  double get weightGoal => _weightGoal ?? 0.0;
  bool hasWeightGoal() => _weightGoal != null;

  // "userProfileImg" field.
  String? _userProfileImg;
  String get userProfileImg => _userProfileImg ?? '';
  bool hasUserProfileImg() => _userProfileImg != null;

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "bmi" field.
  double? _bmi;
  double get bmi => _bmi ?? 0.0;
  bool hasBmi() => _bmi != null;

  // "bmiCategory" field.
  String? _bmiCategory;
  String get bmiCategory => _bmiCategory ?? '';
  bool hasBmiCategory() => _bmiCategory != null;

  // "calorieStandard" field.
  int? _calorieStandard;
  int get calorieStandard => _calorieStandard ?? 0;
  bool hasCalorieStandard() => _calorieStandard != null;

  // "calorieRemaining" field.
  double? _calorieRemaining;
  double get calorieRemaining => _calorieRemaining ?? 0.0;
  bool hasCalorieRemaining() => _calorieRemaining != null;

  // "adviceMessage" field.
  String? _adviceMessage;
  String get adviceMessage => _adviceMessage ?? '';
  bool hasAdviceMessage() => _adviceMessage != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "weeklyGoal" field.
  String? _weeklyGoal;
  String get weeklyGoal => _weeklyGoal ?? '';
  bool hasWeeklyGoal() => _weeklyGoal != null;

  // "objective" field.
  String? _objective;
  String get objective => _objective ?? '';
  bool hasObjective() => _objective != null;

  // "calorieLimit" field.
  double? _calorieLimit;
  double get calorieLimit => _calorieLimit ?? 0.0;
  bool hasCalorieLimit() => _calorieLimit != null;

  // "bmr" field.
  double? _bmr;
  double get bmr => _bmr ?? 0.0;
  bool hasBmr() => _bmr != null;

  // "bmiRemark" field.
  String? _bmiRemark;
  String get bmiRemark => _bmiRemark ?? '';
  bool hasBmiRemark() => _bmiRemark != null;

  // "dateTImeCreated" field.
  String? _dateTImeCreated;
  String get dateTImeCreated => _dateTImeCreated ?? '';
  bool hasDateTImeCreated() => _dateTImeCreated != null;

  // "recentAct" field.
  String? _recentAct;
  String get recentAct => _recentAct ?? '';
  bool hasRecentAct() => _recentAct != null;

  // "activeStatus" field.
  String? _activeStatus;
  String get activeStatus => _activeStatus ?? '';
  bool hasActiveStatus() => _activeStatus != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _firstName = snapshotData['firstName'] as String?;
    _lastName = snapshotData['lastName'] as String?;
    _userName = snapshotData['userName'] as String?;
    _sex = snapshotData['sex'] as String?;
    _birthdate = snapshotData['birthdate'] as DateTime?;
    _bodyCategory = snapshotData['bodyCategory'] as String?;
    _activtyLevel = snapshotData['activtyLevel'] as String?;
    _height = castToType<double>(snapshotData['height']);
    _weight = castToType<double>(snapshotData['weight']);
    _weightGoal = castToType<double>(snapshotData['weightGoal']);
    _userProfileImg = snapshotData['userProfileImg'] as String?;
    _userId = snapshotData['userId'] as String?;
    _bmi = castToType<double>(snapshotData['bmi']);
    _bmiCategory = snapshotData['bmiCategory'] as String?;
    _calorieStandard = castToType<int>(snapshotData['calorieStandard']);
    _calorieRemaining = castToType<double>(snapshotData['calorieRemaining']);
    _adviceMessage = snapshotData['adviceMessage'] as String?;
    _age = castToType<int>(snapshotData['age']);
    _weeklyGoal = snapshotData['weeklyGoal'] as String?;
    _objective = snapshotData['objective'] as String?;
    _calorieLimit = castToType<double>(snapshotData['calorieLimit']);
    _bmr = castToType<double>(snapshotData['bmr']);
    _bmiRemark = snapshotData['bmiRemark'] as String?;
    _dateTImeCreated = snapshotData['dateTImeCreated'] as String?;
    _recentAct = snapshotData['recentAct'] as String?;
    _activeStatus = snapshotData['activeStatus'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userProfile');

  static Stream<UserProfileRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserProfileRecord.fromSnapshot(s));

  static Future<UserProfileRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserProfileRecord.fromSnapshot(s));

  static UserProfileRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserProfileRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserProfileRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserProfileRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserProfileRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserProfileRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserProfileRecordData({
  DocumentReference? user,
  String? firstName,
  String? lastName,
  String? userName,
  String? sex,
  DateTime? birthdate,
  String? bodyCategory,
  String? activtyLevel,
  double? height,
  double? weight,
  double? weightGoal,
  String? userProfileImg,
  String? userId,
  double? bmi,
  String? bmiCategory,
  int? calorieStandard,
  double? calorieRemaining,
  String? adviceMessage,
  int? age,
  String? weeklyGoal,
  String? objective,
  double? calorieLimit,
  double? bmr,
  String? bmiRemark,
  String? dateTImeCreated,
  String? recentAct,
  String? activeStatus,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'firstName': firstName,
      'lastName': lastName,
      'userName': userName,
      'sex': sex,
      'birthdate': birthdate,
      'bodyCategory': bodyCategory,
      'activtyLevel': activtyLevel,
      'height': height,
      'weight': weight,
      'weightGoal': weightGoal,
      'userProfileImg': userProfileImg,
      'userId': userId,
      'bmi': bmi,
      'bmiCategory': bmiCategory,
      'calorieStandard': calorieStandard,
      'calorieRemaining': calorieRemaining,
      'adviceMessage': adviceMessage,
      'age': age,
      'weeklyGoal': weeklyGoal,
      'objective': objective,
      'calorieLimit': calorieLimit,
      'bmr': bmr,
      'bmiRemark': bmiRemark,
      'dateTImeCreated': dateTImeCreated,
      'recentAct': recentAct,
      'activeStatus': activeStatus,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserProfileRecordDocumentEquality implements Equality<UserProfileRecord> {
  const UserProfileRecordDocumentEquality();

  @override
  bool equals(UserProfileRecord? e1, UserProfileRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.userName == e2?.userName &&
        e1?.sex == e2?.sex &&
        e1?.birthdate == e2?.birthdate &&
        e1?.bodyCategory == e2?.bodyCategory &&
        e1?.activtyLevel == e2?.activtyLevel &&
        e1?.height == e2?.height &&
        e1?.weight == e2?.weight &&
        e1?.weightGoal == e2?.weightGoal &&
        e1?.userProfileImg == e2?.userProfileImg &&
        e1?.userId == e2?.userId &&
        e1?.bmi == e2?.bmi &&
        e1?.bmiCategory == e2?.bmiCategory &&
        e1?.calorieStandard == e2?.calorieStandard &&
        e1?.calorieRemaining == e2?.calorieRemaining &&
        e1?.adviceMessage == e2?.adviceMessage &&
        e1?.age == e2?.age &&
        e1?.weeklyGoal == e2?.weeklyGoal &&
        e1?.objective == e2?.objective &&
        e1?.calorieLimit == e2?.calorieLimit &&
        e1?.bmr == e2?.bmr &&
        e1?.bmiRemark == e2?.bmiRemark &&
        e1?.dateTImeCreated == e2?.dateTImeCreated &&
        e1?.recentAct == e2?.recentAct &&
        e1?.activeStatus == e2?.activeStatus;
  }

  @override
  int hash(UserProfileRecord? e) => const ListEquality().hash([
        e?.user,
        e?.firstName,
        e?.lastName,
        e?.userName,
        e?.sex,
        e?.birthdate,
        e?.bodyCategory,
        e?.activtyLevel,
        e?.height,
        e?.weight,
        e?.weightGoal,
        e?.userProfileImg,
        e?.userId,
        e?.bmi,
        e?.bmiCategory,
        e?.calorieStandard,
        e?.calorieRemaining,
        e?.adviceMessage,
        e?.age,
        e?.weeklyGoal,
        e?.objective,
        e?.calorieLimit,
        e?.bmr,
        e?.bmiRemark,
        e?.dateTImeCreated,
        e?.recentAct,
        e?.activeStatus
      ]);

  @override
  bool isValidKey(Object? o) => o is UserProfileRecord;
}
