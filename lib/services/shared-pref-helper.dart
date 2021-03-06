import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  static final String _currentOnBoardingStatus = 'onBoardingStatus';
  static final String _userFirstName = 'firstName';
  static final String _userLastName = 'lastName';
  static final String _userGender = 'gender';
  static final String _userMotivation = 'motivation';
  static final String _userHeight = 'height';
  static final String _userWeight = 'weight';
  static final String _userExperience = 'experience';
  static final String _userLevel = 'level';
  static final String _currentProgress = 'currentProgress';
  static final String _progressToLevelUp = 'progressToLevelUp';
  static final String _chestLevel = 'chestLevel';
  static final String _backLevel = 'backLevel';
  static final String _armsLevel = 'armsLevel';
  static final String _shouldersLevel = 'shouldersLevel';
  static final String _legsLevel = 'legsLevel';
  static final String _strengthLevel = 'strengthLevel';
  static final String _weightLossLevel = 'weightLossLevel';

  static Future<bool> setOnBoardingStatus(bool value, SharedPreferences prefs) {
    return prefs.setBool(_currentOnBoardingStatus, value);
  }

  static bool getOnBoardingStatus(SharedPreferences prefs) {
    return prefs.containsKey(_currentOnBoardingStatus)
        ? prefs.getBool(_currentOnBoardingStatus ?? false)
        : false;
  }

  static Future<bool> setFirstName(String firstName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(_userFirstName, firstName);
  }

  static Future<String> getFirstName(SharedPreferences prefs) async {
    prefs = await SharedPreferences.getInstance();
    String _firstName = prefs.getString(_userFirstName);
    return _firstName;
  }

  static Future<bool> setLastName(String lastName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(_userLastName, lastName);
  }

  static Future<String> getLastName(SharedPreferences prefs) async {
    prefs = await SharedPreferences.getInstance();
    String _lastName = prefs.getString(_userLastName);
    return _lastName;
  }

  static Future<bool> setGender(int gender) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setInt(_userGender, gender);
  }

  static Future<String> getGender(SharedPreferences prefs) async {
    prefs = await SharedPreferences.getInstance();
    int _gender = prefs.getInt(_userGender);
    String _genderString;
    if (_gender == 0) {
      _genderString = 'Male';
    } else if (_gender == 1) {
      _genderString = 'Female';
    } else {
      _genderString = 'GENDER ERROR';
    }
    return _genderString;
  }

  static Future<bool> setMotivation(int motivation) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setInt(_userMotivation, motivation);
  }

  static Future<String> getMotivation(SharedPreferences prefs) async {
    prefs = await SharedPreferences.getInstance();
    int _motivation = prefs.getInt(_userMotivation);
    String _motivationString;
    if (_motivation == 0) {
      _motivationString = 'I want to gain strength';
    } else if (_motivation == 1) {
      _motivationString = 'I want to lose weight';
    } else {
      _motivationString = 'MOTIVATION ERROR';
    }
    return _motivationString;
  }

  static Future<bool> setHeight(int height) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setInt(_userHeight, height);
  }

  static Future<int> getHeight(SharedPreferences prefs) async {
    prefs = await SharedPreferences.getInstance();
    int _height = prefs.getInt(_userHeight);
    return _height;
  }

  static Future<bool> setWeight(int weight) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setInt(_userWeight, weight);
  }

  static Future<String> getWeight(SharedPreferences prefs) async {
    prefs = await SharedPreferences.getInstance();
    int _weight = prefs.getInt(_userWeight);
    return _weight.toString() + ' lbs';
  }

  static Future<bool> setExperience(int experience) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setInt(_userExperience, experience);
  }

  static Future<String> getExperience(SharedPreferences prefs) async {
    prefs = await SharedPreferences.getInstance();
    int _experience = prefs.getInt(_userExperience);
    String _experienceString;
    if (_experience == 0) {
      _experienceString = 'I have no gym experience';
    } else if (_experience == 1) {
      _experienceString = 'I have some gym experience';
    } else if (_experience == 2) {
      _experienceString = 'I have gym experience';
    } else {
      _experienceString = 'EXPERIENCE ERROR';
    }
    return _experienceString;
  }

  static Future<bool> setUserLevel(int level) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setInt(_userLevel, level);
  }

  static Future<int> getUserLevel(SharedPreferences prefs) async {
    prefs = await SharedPreferences.getInstance();
    int _level = prefs.getInt(_userLevel);
    return _level;
  }

  static Future<bool> setCurrentProgress(int progress) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setInt(_currentProgress, progress);
  }

  static Future<int> getCurrentProgress(SharedPreferences prefs) async {
    prefs = await SharedPreferences.getInstance();
    int _progress = prefs.getInt(_currentProgress);
    return _progress;
  }

  static Future<bool> setProgressToLevelUp(int levelUp) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setInt(_progressToLevelUp, levelUp);
  }

  static Future<int> getProgressToLevelUp(SharedPreferences prefs) async {
    prefs = await SharedPreferences.getInstance();
    int _progress = prefs.getInt(_progressToLevelUp);
    return _progress;
  }

  static Future<bool> setChestLevel(int chest) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setInt(_chestLevel, chest);
  }

  static Future<int> getChestLevel(SharedPreferences prefs) async {
    prefs = await SharedPreferences.getInstance();
    int _chest = prefs.getInt(_chestLevel);
    return _chest;
  }

  static Future<bool> setBackLevel(int back) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setInt(_backLevel, back);
  }

  static Future<int> getBackLevel(SharedPreferences prefs) async {
    prefs = await SharedPreferences.getInstance();
    int _back = prefs.getInt(_backLevel);
    return _back;
  }

  static Future<bool> setArmsLevel(int arms) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setInt(_armsLevel, arms);
  }

  static Future<int> getArmsLevel(SharedPreferences prefs) async {
    prefs = await SharedPreferences.getInstance();
    int _arms = prefs.getInt(_armsLevel);
    return _arms;
  }

  static Future<bool> setShouldersLevel(int shoulders) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setInt(_shouldersLevel, shoulders);
  }

  static Future<int> getShouldersLevel(SharedPreferences prefs) async {
    prefs = await SharedPreferences.getInstance();
    int _shoulders = prefs.getInt(_shouldersLevel);
    return _shoulders;
  }

  static Future<bool> setLegsLevel(int legs) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setInt(_legsLevel, legs);
  }

  static Future<int> getLegsLevel(SharedPreferences prefs) async {
    prefs = await SharedPreferences.getInstance();
    int _legs = prefs.getInt(_legsLevel);
    return _legs;
  }

  static Future<bool> setStrengthLevel(int strength) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setInt(_strengthLevel, strength);
  }

  static Future<int> getStrengthLevel(SharedPreferences prefs) async {
    prefs = await SharedPreferences.getInstance();
    int _strength = prefs.getInt(_strengthLevel);
    return _strength;
  }

  static Future<bool> setWeightLossLevel(int calorie) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setInt(_weightLossLevel, calorie);
  }

  static Future<int> getWeightLossLevel(SharedPreferences prefs) async {
    prefs = await SharedPreferences.getInstance();
    int _calorie = prefs.getInt(_weightLossLevel);
    return _calorie;
  }
}
