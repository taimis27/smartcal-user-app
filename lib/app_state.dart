import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _height = prefs.getDouble('ff_height') ?? _height;
    });
    _safeInit(() {
      _weight = prefs.getDouble('ff_weight') ?? _weight;
    });
    _safeInit(() {
      _weightGoal = prefs.getDouble('ff_weightGoal') ?? _weightGoal;
    });
    _safeInit(() {
      _calorieRemaining =
          prefs.getDouble('ff_calorieRemaining') ?? _calorieRemaining;
    });
    _safeInit(() {
      _calorieLimit = prefs.getDouble('ff_calorieLimit') ?? _calorieLimit;
    });
    _safeInit(() {
      _totalCalConsumed =
          prefs.getDouble('ff_totalCalConsumed') ?? _totalCalConsumed;
    });
    _safeInit(() {
      _totalProteinConsumed =
          prefs.getDouble('ff_totalProteinConsumed') ?? _totalProteinConsumed;
    });
    _safeInit(() {
      _totalFatConsumed =
          prefs.getDouble('ff_totalFatConsumed') ?? _totalFatConsumed;
    });
    _safeInit(() {
      _totalCarbConsumed =
          prefs.getDouble('ff_totalCarbConsumed') ?? _totalCarbConsumed;
    });
    _safeInit(() {
      _isOverConsumption =
          prefs.getBool('ff_isOverConsumption') ?? _isOverConsumption;
    });
    _safeInit(() {
      _eatingCategory = prefs.getString('ff_eatingCategory') ?? _eatingCategory;
    });
    _safeInit(() {
      _totalCal = prefs.getDouble('ff_totalCal') ?? _totalCal;
    });
    _safeInit(() {
      _currentDate = prefs.getString('ff_currentDate') ?? _currentDate;
    });
    _safeInit(() {
      _eatCateg = prefs.getStringList('ff_eatCateg') ?? _eatCateg;
    });
    _safeInit(() {
      _religion = prefs.getString('ff_religion') ?? _religion;
    });
    _safeInit(() {
      _foodNotAllowed = prefs.getString('ff_foodNotAllowed') ?? _foodNotAllowed;
    });
    _safeInit(() {
      _uid = prefs.getString('ff_uid') ?? _uid;
    });
    _safeInit(() {
      _Allergen = prefs.getString('ff_Allergen') ?? _Allergen;
    });
    _safeInit(() {
      _intolerance = prefs.getString('ff_intolerance') ?? _intolerance;
    });
    _safeInit(() {
      _healthCondition =
          prefs.getString('ff_healthCondition') ?? _healthCondition;
    });
    _safeInit(() {
      _totalWaterIntake =
          prefs.getDouble('ff_totalWaterIntake') ?? _totalWaterIntake;
    });
    _safeInit(() {
      _currentW = prefs.getString('ff_currentW') ?? _currentW;
    });
    _safeInit(() {
      _allergenArray =
          prefs.getStringList('ff_allergenArray') ?? _allergenArray;
    });
    _safeInit(() {
      _intoleranceArray =
          prefs.getStringList('ff_intoleranceArray') ?? _intoleranceArray;
    });
    _safeInit(() {
      _foodNotAllowedList =
          prefs.getStringList('ff_foodNotAllowedList') ?? _foodNotAllowedList;
    });
    _safeInit(() {
      _latestWeight = prefs.getDouble('ff_latestWeight') ?? _latestWeight;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _userId = '';
  String get userId => _userId;
  set userId(String value) {
    _userId = value;
  }

  String _firstName = '';
  String get firstName => _firstName;
  set firstName(String value) {
    _firstName = value;
  }

  String _lastName = '';
  String get lastName => _lastName;
  set lastName(String value) {
    _lastName = value;
  }

  String _username = '';
  String get username => _username;
  set username(String value) {
    _username = value;
  }

  String _sex = '';
  String get sex => _sex;
  set sex(String value) {
    _sex = value;
  }

  DateTime? _birthdate = DateTime.fromMillisecondsSinceEpoch(1730615820000);
  DateTime? get birthdate => _birthdate;
  set birthdate(DateTime? value) {
    _birthdate = value;
  }

  String _bodyCategory = '';
  String get bodyCategory => _bodyCategory;
  set bodyCategory(String value) {
    _bodyCategory = value;
  }

  String _activeLevel = '';
  String get activeLevel => _activeLevel;
  set activeLevel(String value) {
    _activeLevel = value;
  }

  double _height = 0.0;
  double get height => _height;
  set height(double value) {
    _height = value;
    prefs.setDouble('ff_height', value);
  }

  double _weight = 0.0;
  double get weight => _weight;
  set weight(double value) {
    _weight = value;
    prefs.setDouble('ff_weight', value);
  }

  double _weightGoal = 0.0;
  double get weightGoal => _weightGoal;
  set weightGoal(double value) {
    _weightGoal = value;
    prefs.setDouble('ff_weightGoal', value);
  }

  String _userProfileImg = '';
  String get userProfileImg => _userProfileImg;
  set userProfileImg(String value) {
    _userProfileImg = value;
  }

  double _bmi = 0.0;
  double get bmi => _bmi;
  set bmi(double value) {
    _bmi = value;
  }

  String _bmiCategory = '';
  String get bmiCategory => _bmiCategory;
  set bmiCategory(String value) {
    _bmiCategory = value;
  }

  int _calorieStandard = 0;
  int get calorieStandard => _calorieStandard;
  set calorieStandard(int value) {
    _calorieStandard = value;
  }

  double _calorieRemaining = 0.0;
  double get calorieRemaining => _calorieRemaining;
  set calorieRemaining(double value) {
    _calorieRemaining = value;
    prefs.setDouble('ff_calorieRemaining', value);
  }

  int _age = 0;
  int get age => _age;
  set age(int value) {
    _age = value;
  }

  String _weeklyGoal = '';
  String get weeklyGoal => _weeklyGoal;
  set weeklyGoal(String value) {
    _weeklyGoal = value;
  }

  String _objective = '';
  String get objective => _objective;
  set objective(String value) {
    _objective = value;
  }

  double _bmrComputed = 0.0;
  double get bmrComputed => _bmrComputed;
  set bmrComputed(double value) {
    _bmrComputed = value;
  }

  double _calorieLimit = 0.0;
  double get calorieLimit => _calorieLimit;
  set calorieLimit(double value) {
    _calorieLimit = value;
    prefs.setDouble('ff_calorieLimit', value);
  }

  String _bmiRemark = '';
  String get bmiRemark => _bmiRemark;
  set bmiRemark(String value) {
    _bmiRemark = value;
  }

  int _calorieContent = 0;
  int get calorieContent => _calorieContent;
  set calorieContent(int value) {
    _calorieContent = value;
  }

  String _meal1 = '';
  String get meal1 => _meal1;
  set meal1(String value) {
    _meal1 = value;
  }

  String _meal2 = '';
  String get meal2 => _meal2;
  set meal2(String value) {
    _meal2 = value;
  }

  String _meal3 = '';
  String get meal3 => _meal3;
  set meal3(String value) {
    _meal3 = value;
  }

  String _bmiCategoryRemark = '';
  String get bmiCategoryRemark => _bmiCategoryRemark;
  set bmiCategoryRemark(String value) {
    _bmiCategoryRemark = value;
  }

  double _totalCalConsumed = 0.0;
  double get totalCalConsumed => _totalCalConsumed;
  set totalCalConsumed(double value) {
    _totalCalConsumed = value;
    prefs.setDouble('ff_totalCalConsumed', value);
  }

  double _totalProteinConsumed = 0.0;
  double get totalProteinConsumed => _totalProteinConsumed;
  set totalProteinConsumed(double value) {
    _totalProteinConsumed = value;
    prefs.setDouble('ff_totalProteinConsumed', value);
  }

  double _totalFatConsumed = 0.0;
  double get totalFatConsumed => _totalFatConsumed;
  set totalFatConsumed(double value) {
    _totalFatConsumed = value;
    prefs.setDouble('ff_totalFatConsumed', value);
  }

  double _totalCarbConsumed = 0.0;
  double get totalCarbConsumed => _totalCarbConsumed;
  set totalCarbConsumed(double value) {
    _totalCarbConsumed = value;
    prefs.setDouble('ff_totalCarbConsumed', value);
  }

  String _consumptionRemark = '';
  String get consumptionRemark => _consumptionRemark;
  set consumptionRemark(String value) {
    _consumptionRemark = value;
  }

  bool _isOverConsumption = false;
  bool get isOverConsumption => _isOverConsumption;
  set isOverConsumption(bool value) {
    _isOverConsumption = value;
    prefs.setBool('ff_isOverConsumption', value);
  }

  String _eatingCategory = '';
  String get eatingCategory => _eatingCategory;
  set eatingCategory(String value) {
    _eatingCategory = value;
    prefs.setString('ff_eatingCategory', value);
  }

  double _totalCal = 0.0;
  double get totalCal => _totalCal;
  set totalCal(double value) {
    _totalCal = value;
    prefs.setDouble('ff_totalCal', value);
  }

  String _currentDate = '';
  String get currentDate => _currentDate;
  set currentDate(String value) {
    _currentDate = value;
    prefs.setString('ff_currentDate', value);
  }

  String _latestDate = '';
  String get latestDate => _latestDate;
  set latestDate(String value) {
    _latestDate = value;
  }

  bool _isResetNeeded = false;
  bool get isResetNeeded => _isResetNeeded;
  set isResetNeeded(bool value) {
    _isResetNeeded = value;
  }

  bool _isValidIntake = false;
  bool get isValidIntake => _isValidIntake;
  set isValidIntake(bool value) {
    _isValidIntake = value;
  }

  List<String> _eatCateg = ['Breakfast', 'Lunch', 'Dinner'];
  List<String> get eatCateg => _eatCateg;
  set eatCateg(List<String> value) {
    _eatCateg = value;
    prefs.setStringList('ff_eatCateg', value);
  }

  void addToEatCateg(String value) {
    eatCateg.add(value);
    prefs.setStringList('ff_eatCateg', _eatCateg);
  }

  void removeFromEatCateg(String value) {
    eatCateg.remove(value);
    prefs.setStringList('ff_eatCateg', _eatCateg);
  }

  void removeAtIndexFromEatCateg(int index) {
    eatCateg.removeAt(index);
    prefs.setStringList('ff_eatCateg', _eatCateg);
  }

  void updateEatCategAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    eatCateg[index] = updateFn(_eatCateg[index]);
    prefs.setStringList('ff_eatCateg', _eatCateg);
  }

  void insertAtIndexInEatCateg(int index, String value) {
    eatCateg.insert(index, value);
    prefs.setStringList('ff_eatCateg', _eatCateg);
  }

  String _religion = '';
  String get religion => _religion;
  set religion(String value) {
    _religion = value;
    prefs.setString('ff_religion', value);
  }

  String _foodNotAllowed = '';
  String get foodNotAllowed => _foodNotAllowed;
  set foodNotAllowed(String value) {
    _foodNotAllowed = value;
    prefs.setString('ff_foodNotAllowed', value);
  }

  String _uid = '';
  String get uid => _uid;
  set uid(String value) {
    _uid = value;
    prefs.setString('ff_uid', value);
  }

  String _Allergen = '';
  String get Allergen => _Allergen;
  set Allergen(String value) {
    _Allergen = value;
    prefs.setString('ff_Allergen', value);
  }

  String _intolerance = '';
  String get intolerance => _intolerance;
  set intolerance(String value) {
    _intolerance = value;
    prefs.setString('ff_intolerance', value);
  }

  String _healthCondition = '';
  String get healthCondition => _healthCondition;
  set healthCondition(String value) {
    _healthCondition = value;
    prefs.setString('ff_healthCondition', value);
  }

  double _totalWaterIntake = 0.0;
  double get totalWaterIntake => _totalWaterIntake;
  set totalWaterIntake(double value) {
    _totalWaterIntake = value;
    prefs.setDouble('ff_totalWaterIntake', value);
  }

  String _currentW = '';
  String get currentW => _currentW;
  set currentW(String value) {
    _currentW = value;
    prefs.setString('ff_currentW', value);
  }

  double _pendo = 0.0;
  double get pendo => _pendo;
  set pendo(double value) {
    _pendo = value;
  }

  double _gainW = 0.0;
  double get gainW => _gainW;
  set gainW(double value) {
    _gainW = value;
  }

  double _mGain = 0.0;
  double get mGain => _mGain;
  set mGain(double value) {
    _mGain = value;
  }

  double _maintainW = 0.0;
  double get maintainW => _maintainW;
  set maintainW(double value) {
    _maintainW = value;
  }

  double _mWeightLoss = 0.0;
  double get mWeightLoss => _mWeightLoss;
  set mWeightLoss(double value) {
    _mWeightLoss = value;
  }

  double _weightLoss = 0.0;
  double get weightLoss => _weightLoss;
  set weightLoss(double value) {
    _weightLoss = value;
  }

  double _bodyFat = 0.0;
  double get bodyFat => _bodyFat;
  set bodyFat(double value) {
    _bodyFat = value;
  }

  double _neck = 0.0;
  double get neck => _neck;
  set neck(double value) {
    _neck = value;
  }

  double _hips = 0.0;
  double get hips => _hips;
  set hips(double value) {
    _hips = value;
  }

  double _waist = 0.0;
  double get waist => _waist;
  set waist(double value) {
    _waist = value;
  }

  double _fatMass = 0.0;
  double get fatMass => _fatMass;
  set fatMass(double value) {
    _fatMass = value;
  }

  double _leanMass = 0.0;
  double get leanMass => _leanMass;
  set leanMass(double value) {
    _leanMass = value;
  }

  String _bodyFatCategory = '';
  String get bodyFatCategory => _bodyFatCategory;
  set bodyFatCategory(String value) {
    _bodyFatCategory = value;
  }

  double _idealBodyFatAge = 0.0;
  double get idealBodyFatAge => _idealBodyFatAge;
  set idealBodyFatAge(double value) {
    _idealBodyFatAge = value;
  }

  double _decreementIdealActualBFP = 0.0;
  double get decreementIdealActualBFP => _decreementIdealActualBFP;
  set decreementIdealActualBFP(double value) {
    _decreementIdealActualBFP = value;
  }

  double _hamwiIW = 0.0;
  double get hamwiIW => _hamwiIW;
  set hamwiIW(double value) {
    _hamwiIW = value;
  }

  double _devineIW = 0.0;
  double get devineIW => _devineIW;
  set devineIW(double value) {
    _devineIW = value;
  }

  double _robinsonIW = 0.0;
  double get robinsonIW => _robinsonIW;
  set robinsonIW(double value) {
    _robinsonIW = value;
  }

  double _millerIW = 0.0;
  double get millerIW => _millerIW;
  set millerIW(double value) {
    _millerIW = value;
  }

  List<String> _allergenArray = [];
  List<String> get allergenArray => _allergenArray;
  set allergenArray(List<String> value) {
    _allergenArray = value;
    prefs.setStringList('ff_allergenArray', value);
  }

  void addToAllergenArray(String value) {
    allergenArray.add(value);
    prefs.setStringList('ff_allergenArray', _allergenArray);
  }

  void removeFromAllergenArray(String value) {
    allergenArray.remove(value);
    prefs.setStringList('ff_allergenArray', _allergenArray);
  }

  void removeAtIndexFromAllergenArray(int index) {
    allergenArray.removeAt(index);
    prefs.setStringList('ff_allergenArray', _allergenArray);
  }

  void updateAllergenArrayAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    allergenArray[index] = updateFn(_allergenArray[index]);
    prefs.setStringList('ff_allergenArray', _allergenArray);
  }

  void insertAtIndexInAllergenArray(int index, String value) {
    allergenArray.insert(index, value);
    prefs.setStringList('ff_allergenArray', _allergenArray);
  }

  List<String> _intoleranceArray = [];
  List<String> get intoleranceArray => _intoleranceArray;
  set intoleranceArray(List<String> value) {
    _intoleranceArray = value;
    prefs.setStringList('ff_intoleranceArray', value);
  }

  void addToIntoleranceArray(String value) {
    intoleranceArray.add(value);
    prefs.setStringList('ff_intoleranceArray', _intoleranceArray);
  }

  void removeFromIntoleranceArray(String value) {
    intoleranceArray.remove(value);
    prefs.setStringList('ff_intoleranceArray', _intoleranceArray);
  }

  void removeAtIndexFromIntoleranceArray(int index) {
    intoleranceArray.removeAt(index);
    prefs.setStringList('ff_intoleranceArray', _intoleranceArray);
  }

  void updateIntoleranceArrayAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    intoleranceArray[index] = updateFn(_intoleranceArray[index]);
    prefs.setStringList('ff_intoleranceArray', _intoleranceArray);
  }

  void insertAtIndexInIntoleranceArray(int index, String value) {
    intoleranceArray.insert(index, value);
    prefs.setStringList('ff_intoleranceArray', _intoleranceArray);
  }

  List<String> _foodNotAllowedList = [];
  List<String> get foodNotAllowedList => _foodNotAllowedList;
  set foodNotAllowedList(List<String> value) {
    _foodNotAllowedList = value;
    prefs.setStringList('ff_foodNotAllowedList', value);
  }

  void addToFoodNotAllowedList(String value) {
    foodNotAllowedList.add(value);
    prefs.setStringList('ff_foodNotAllowedList', _foodNotAllowedList);
  }

  void removeFromFoodNotAllowedList(String value) {
    foodNotAllowedList.remove(value);
    prefs.setStringList('ff_foodNotAllowedList', _foodNotAllowedList);
  }

  void removeAtIndexFromFoodNotAllowedList(int index) {
    foodNotAllowedList.removeAt(index);
    prefs.setStringList('ff_foodNotAllowedList', _foodNotAllowedList);
  }

  void updateFoodNotAllowedListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    foodNotAllowedList[index] = updateFn(_foodNotAllowedList[index]);
    prefs.setStringList('ff_foodNotAllowedList', _foodNotAllowedList);
  }

  void insertAtIndexInFoodNotAllowedList(int index, String value) {
    foodNotAllowedList.insert(index, value);
    prefs.setStringList('ff_foodNotAllowedList', _foodNotAllowedList);
  }

  double _latestWeight = 0.0;
  double get latestWeight => _latestWeight;
  set latestWeight(double value) {
    _latestWeight = value;
    prefs.setDouble('ff_latestWeight', value);
  }

  String _searchFoodNutri = '';
  String get searchFoodNutri => _searchFoodNutri;
  set searchFoodNutri(String value) {
    _searchFoodNutri = value;
  }

  String _searchFoodRecipe = '';
  String get searchFoodRecipe => _searchFoodRecipe;
  set searchFoodRecipe(String value) {
    _searchFoodRecipe = value;
  }

  String _searchedUploadImg = '';
  String get searchedUploadImg => _searchedUploadImg;
  set searchedUploadImg(String value) {
    _searchedUploadImg = value;
  }

  String _middleInitial = '';
  String get middleInitial => _middleInitial;
  set middleInitial(String value) {
    _middleInitial = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
