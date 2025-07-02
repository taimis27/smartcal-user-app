import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

double calculateBMI(
  double weight,
  double height,
) {
  double computedBMI = weight / ((height / 100) * (height / 100));

  return double.parse(
      computedBMI.toStringAsFixed(2)); // Return BMI with 2 decimal places
}

String bmiCategory(double bmi) {
  String category;
// Determine BMI category
  if (bmi < 18.5) {
    category = "Underweight";
  } else if (bmi >= 18.5 && bmi < 22.9) {
    category = "Normal";
  } else if (bmi >= 23 && bmi < 24.9) {
    category = "Overweight";
  } else if (bmi >= 25 && bmi < 29.9) {
    category = "Obese I";
  } else {
    category = "Obese II";
  }

  return category;
}

String bmiMessage(String bmiCategory) {
  // Check bmiCategory and return the appropriate message
  if (bmiCategory == "Underweight") {
    return "Malnourished";
  } else if (bmiCategory == "Normal") {
    return "Healthy";
  } else if (bmiCategory == "Overweight") {
    return "Slightly Unhealthy";
  } else if (bmiCategory == "Obese I") {
    return "Unhealthy";
  } else if (bmiCategory == "Obese II") {
    return "Extremely Unhealthy";
  }

// Default message if bmiCategory doesn't match any cases
  return "Unknown BMI category";
}

int calculateAge(DateTime birthdate) {
  DateTime today = DateTime.now();
  int age = today.year - birthdate.year;

  // Check if the user's birthday has not occurred yet this year
  if (today.month < birthdate.month ||
      (today.month == birthdate.month && today.day < birthdate.day)) {
    age--;
  }

  return age;
}

double bmrComputation(
  int age,
  double height,
  double weight,
  String sex,
) {
  double bmrComputed;

  if (sex.toLowerCase() == 'male') {
    // BMR formula for men
    bmrComputed = (13.397 * weight) + (4.799 * height) - (5.677 * age) + 88.362;
  } else if (sex.toLowerCase() == 'female') {
    // BMR formula for women
    bmrComputed = (9.247 * weight) + (3.098 * height) - (4.330 * age) + 447.593;
  } else {
    throw ArgumentError("Sex must be either 'male' or 'female'.");
  }

  return double.parse(
      bmrComputed.toStringAsFixed(2)); // Return BMR with 2 decimal places
}

double calIntakeRecFunction(
  double bmr,
  String activityLevel,
  String goal,
  String bodyType,
) {
  double calorieAdjustment = 0.0;

// Determine activity multiplier based on activity level
  double activityMultiplier;
  switch (activityLevel) {
    case 'Not Very Active':
      activityMultiplier = 1.2;
      break;
    case 'Lightly Active':
      activityMultiplier = 1.375;
      break;
    case 'Active':
      activityMultiplier = 1.55;
      break;
    case 'Very Active':
      activityMultiplier = 1.725;
      break;
    default:
      throw ArgumentError("Invalid activity level.");
  }

  // Calculate base calories based on BMR and activity level
  double baseCalories = bmr * activityMultiplier;

  // Adjust calorie intake based on body type and goal
  if (goal.toLowerCase() == 'lose weight') {
    if (bodyType.toLowerCase() == 'ectomorph') {
      calorieAdjustment = -250; // Smaller deficit
    } else if (bodyType.toLowerCase() == 'mesomorph') {
      calorieAdjustment = -500; // Moderate deficit
    } else if (bodyType.toLowerCase() == 'endomorph') {
      calorieAdjustment = -750; // Larger deficit
    } else {
      throw ArgumentError("Invalid body type.");
    }
  } else if (goal.toLowerCase() == 'maintain weight') {
    calorieAdjustment = 0; // No adjustment for maintenance
  } else if (goal.toLowerCase() == 'gain weight') {
    if (bodyType.toLowerCase() == 'ectomorph') {
      calorieAdjustment = 500; // Larger surplus for ectomorphs
    } else if (bodyType.toLowerCase() == 'mesomorph') {
      calorieAdjustment = 300; // Moderate surplus
    } else if (bodyType.toLowerCase() == 'endomorph') {
      calorieAdjustment = 100; // Smaller surplus for endomorphs
    } else {
      throw ArgumentError("Invalid body type.");
    }
  } else {
    throw ArgumentError(
        "Invalid goal. Must be 'lose weight', 'maintain weight', or 'gain weight'.");
  }

  // Calculate total recommended calorie intake

  return double.parse((baseCalories + calorieAdjustment).toStringAsFixed(2));
}

String bmiCategoryRemark(String bmiCategory) {
  if (bmiCategory == "Underweight") {
    return "Seek assessment";
  } else if (bmiCategory == "Normal") {
    return "Healthy range";
  } else if (bmiCategory == "Overweight") {
    return "Consider changes";
  } else if (bmiCategory == "Obese I") {
    return "Manage activity";
  } else if (bmiCategory == "Obese II") {
    return "Consult professional";
  }

// Default message if bmiCategory doesn't match any cases
  return "Unknown BMI category";
}

double remainingCal(
  double calorieRemaining,
  double foodCal,
) {
  return calorieRemaining - foodCal;
}

double addCalConsumption(
  double foodCal,
  double totalCalConsumed,
) {
  return totalCalConsumed + foodCal;
}

double addProteinConsumption(
  double foodProtein,
  double totalProteinConsumed,
) {
  return totalProteinConsumed + foodProtein;
}

double addFatConsumed(
  double foodFat,
  double totalFatConsumed,
) {
  return totalFatConsumed + foodFat;
}

double addCarbConsumed(
  double foodCarb,
  double totalCarbConsumed,
) {
  return totalCarbConsumed + foodCarb;
}

String consumptionRemark(
  double totalCalConsumption,
  String foodName,
  double foodCal,
  double calLimit,
) {
  if (totalCalConsumption > calLimit) {
    return "Calorie Exceeded and Unhealthy for your goal!";
  } else if (foodCal < 300) {
    return "$foodName is Good and Low in Calories.";
  } else if (foodCal >= 300 && foodCal < 500) {
    return "$foodName is Good but High in Calories.";
  } else if (foodCal >= 500) {
    return "$foodName is Bad and Too High in Calories.";
  } else {
    return "$foodName has no specific remark.";
  }
}

bool calorieLimitChecker(double calorieRemaining) {
  return calorieRemaining <= 0;
}

bool resetChecker(
  String currentDate,
  String latestDate,
) {
// Compare the current date with lastResetDate
  if (latestDate != currentDate) {
    return true;
  } else {
    return false;
  }
}

double pendoralCalculator(
  double height,
  double weight,
) {
  double pendoralCalculator =
      weight / ((height / 100) * (height / 100) * (height / 100));

  return double.parse(pendoralCalculator
      .toStringAsFixed(2)); // Return BMI with 2 decimal places
}

double bodyFatComputationMen(
  double bmi,
  int age,
) {
  double BFP = ((1.20 * bmi) + ((0.23 * age) - 16.2)) / 100;

  return double.parse(
      BFP.toStringAsFixed(4)); // Return BMI with 2 decimal places
}

double wBodyFat(
  int age,
  double bmi,
) {
  double BFP = ((1.20 * bmi) + ((0.23 * age) - 5.4)) / 100;

  return double.parse(
      BFP.toStringAsFixed(4)); // Return BMI with 2 decimal places
}

double fatMassCompute(
  double bf,
  double weight,
) {
  double fatMass = bf * weight;

  return double.parse(fatMass.toStringAsFixed(3));
}

double leanMassCompute(
  double weight,
  double fatmass,
) {
  double leanMass = weight - fatmass;

  return double.parse(leanMass.toStringAsFixed(3));
}

String getBodyFatCategory(
  double bfp,
  String gender,
) {
// Convert gender to lowercase for consistency
  gender = gender.toLowerCase();

  // Scale BFP to percentage for comparison
  double percentage = bfp * 100;

  // Categories based on gender
  if (gender == "female") {
    if (percentage >= 10.0 && percentage <= 13.0) {
      return "Essential fat";
    } else if (percentage >= 14.0 && percentage <= 20.0) {
      return "Athletes";
    } else if (percentage >= 21.0 && percentage <= 24.0) {
      return "Fitness";
    } else if (percentage >= 25.0 && percentage <= 31.0) {
      return "Average";
    } else if (percentage >= 32.0) {
      return "Obese";
    }
  } else if (gender == "male") {
    if (percentage >= 2.0 && percentage <= 5.0) {
      return "Essential fat";
    } else if (percentage >= 6.0 && percentage <= 13.0) {
      return "Athletes";
    } else if (percentage >= 14.0 && percentage <= 17.0) {
      return "Fitness";
    } else if (percentage >= 18.0 && percentage <= 24.0) {
      return "Average";
    } else if (percentage >= 25.0) {
      return "Obese";
    }
  }

  // Default case: invalid input
  return "Invalid input";
}

double getIdealBodyFat(
  int age,
  String gender,
) {
// Convert gender to lowercase for consistency
  gender = gender.toLowerCase();

  // Define age ranges and corresponding ideal BFP percentages
  final Map<int, double> womenBFP = {
    20: .177,
    25: .184,
    30: .193,
    35: .215,
    40: .222,
    45: .229,
    50: .252,
    55: .263,
  };

  final Map<int, double> menBFP = {
    20: .085,
    25: .105,
    30: .127,
    35: .137,
    40: .153,
    45: .164,
    50: .189,
    55: .209,
  };

  // Select the correct map based on gender
  final Map<int, double> bfpMap = (gender == "female") ? womenBFP : menBFP;

  // Find the closest age category
  int closestAge =
      bfpMap.keys.reduce((a, b) => (age - a).abs() < (age - b).abs() ? a : b);

  // Return the ideal BFP for the closest age
  return bfpMap[closestAge] ?? 0.0; // Return 0.0 if no match found
}

double lessBodyPercentage(
  double bfp,
  double ideal,
) {
  double lessBFP = bfp - ideal;

  return double.parse(
      lessBFP.toStringAsFixed(4)); // Return BMI with 2 decimal places
}

double hamwiFormula(
  double height,
  bool isMale,
) {
  double cmToFeet(double height) {
    return height / 30.48; // 1 foot = 30.48 cm
  }

  double heightInFeet = cmToFeet(height);
  double inchesOver5Feet =
      (heightInFeet - 5) * 12; // Calculate inches over 5 feet

  double result;

  if (isMale) {
    result = 48.0 + (2.7 * inchesOver5Feet); // Hamwi formula for males
  } else {
    result = 45.5 + (2.2 * inchesOver5Feet); // Hamwi formula for females
  }

  return double.parse(result.toStringAsFixed(2));
}

double devineIWFunction(
  double height,
  bool isMale,
) {
  double cmToFeet(double height) {
    return height / 30.48; // 1 foot = 30.48 cm
  }

  double heightInFeet = cmToFeet(height);
  double inchesOver5Feet =
      (heightInFeet - 5) * 12; // Calculate inches over 5 feet

  double result;

  if (isMale) {
    result = 50.0 + (2.3 * inchesOver5Feet); // Hamwi formula for males
  } else {
    result = 45.5 + (2.3 * inchesOver5Feet); // Hamwi formula for females
  }

  return double.parse(result.toStringAsFixed(2));
}

double millerIWFunction(
  double height,
  bool isMale,
) {
  double cmToFeet(double height) {
    return height / 30.48; // 1 foot = 30.48 cm
  }

  double heightInFeet = cmToFeet(height);
  double inchesOver5Feet =
      (heightInFeet - 5) * 12; // Calculate inches over 5 feet

  double result;

  if (isMale) {
    result = 56.2 + (1.41 * inchesOver5Feet); // Hamwi formula for males
  } else {
    result = 53.1 + (1.36 * inchesOver5Feet); // Hamwi formula for females
  }

  return double.parse(result.toStringAsFixed(2));
}

double robinsonIWFunction(
  double height,
  bool isMale,
) {
  double cmToFeet(double height) {
    return height / 30.48; // 1 foot = 30.48 cm
  }

  double heightInFeet = cmToFeet(height);
  double inchesOver5Feet =
      (heightInFeet - 5) * 12; // Calculate inches over 5 feet

  double result;

  if (isMale) {
    result = 52.0 + (1.9 * inchesOver5Feet); // Hamwi formula for males
  } else {
    result = 49.0 + (1.7 * inchesOver5Feet); // Hamwi formula for females
  }

  return double.parse(result.toStringAsFixed(2));
}

double convertPercentage(
  double calorieLimit,
  double calorieRemaining,
) {
  if (calorieLimit <= 0) {
    // Avoid division by zero
    return 0.0;
  }

  // Calculate the percentage
  double percentage = calorieRemaining / calorieLimit;

  // Return the percentage rounded to 4 decimal places
  return double.parse(percentage.toStringAsFixed(4));
}

double toPercentage(
  double calorieLimit,
  double calorieRemaining,
) {
  if (calorieLimit <= 0) {
    // Avoid division by zero
    return 0.0;
  }
// Calculate percentage
  double percentage = calorieRemaining / calorieLimit;

  // Clamp the percentage between 0 and 1
  if (percentage > 1) {
    percentage = 1.0;
  } else if (percentage < 0) {
    percentage = 0.0;
  }

  return percentage;
}
