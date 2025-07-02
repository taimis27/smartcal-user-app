import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FoodCategoryRecord extends FirestoreRecord {
  FoodCategoryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "foodMenu" field.
  DocumentReference? _foodMenu;
  DocumentReference? get foodMenu => _foodMenu;
  bool hasFoodMenu() => _foodMenu != null;

  // "foodRecommendations" field.
  DocumentReference? _foodRecommendations;
  DocumentReference? get foodRecommendations => _foodRecommendations;
  bool hasFoodRecommendations() => _foodRecommendations != null;

  // "categoryImg" field.
  String? _categoryImg;
  String get categoryImg => _categoryImg ?? '';
  bool hasCategoryImg() => _categoryImg != null;

  void _initializeFields() {
    _category = snapshotData['category'] as String?;
    _foodMenu = snapshotData['foodMenu'] as DocumentReference?;
    _foodRecommendations =
        snapshotData['foodRecommendations'] as DocumentReference?;
    _categoryImg = snapshotData['categoryImg'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('foodCategory');

  static Stream<FoodCategoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FoodCategoryRecord.fromSnapshot(s));

  static Future<FoodCategoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FoodCategoryRecord.fromSnapshot(s));

  static FoodCategoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FoodCategoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FoodCategoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FoodCategoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FoodCategoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FoodCategoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFoodCategoryRecordData({
  String? category,
  DocumentReference? foodMenu,
  DocumentReference? foodRecommendations,
  String? categoryImg,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'category': category,
      'foodMenu': foodMenu,
      'foodRecommendations': foodRecommendations,
      'categoryImg': categoryImg,
    }.withoutNulls,
  );

  return firestoreData;
}

class FoodCategoryRecordDocumentEquality
    implements Equality<FoodCategoryRecord> {
  const FoodCategoryRecordDocumentEquality();

  @override
  bool equals(FoodCategoryRecord? e1, FoodCategoryRecord? e2) {
    return e1?.category == e2?.category &&
        e1?.foodMenu == e2?.foodMenu &&
        e1?.foodRecommendations == e2?.foodRecommendations &&
        e1?.categoryImg == e2?.categoryImg;
  }

  @override
  int hash(FoodCategoryRecord? e) => const ListEquality()
      .hash([e?.category, e?.foodMenu, e?.foodRecommendations, e?.categoryImg]);

  @override
  bool isValidKey(Object? o) => o is FoodCategoryRecord;
}
