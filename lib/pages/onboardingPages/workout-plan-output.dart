import 'package:fitness_app/tabs/tabs.dart';
import 'package:fitness_app/services/shared-pref-helper.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class WorkoutPlanOutput extends StatefulWidget {
  @override
  _WorkoutPlanOutputState createState() => _WorkoutPlanOutputState();
}

class _WorkoutPlanOutputState extends State<WorkoutPlanOutput> {
  SharedPreferences prefs;

  String _firstName;
  String _lastName;
  String _gender;
  String _motivation;
  int _heightFeet;
  int _heightInches;
  String _weight;
  String _experience;
  String _plan;

  @override
  void initState() {
    super.initState();

    _initData();
  }

  void _initData() async {
    prefs = await SharedPreferences.getInstance();
    SharedPreferencesHelper.getFirstName(prefs).then((firstName) {
      setState(() {
        this._firstName = firstName;
      });
    });
    SharedPreferencesHelper.getLastName(prefs).then((lastName) {
      setState(() {
        this._lastName = lastName;
      });
    });
    SharedPreferencesHelper.getGender(prefs).then((gender) {
      setState(() {
        this._gender = gender;
      });
    });
    SharedPreferencesHelper.getMotivation(prefs).then((motivation) {
      setState(() {
        this._motivation = motivation;
        if (motivation == 'I want to gain strength') {
          _plan = 'swole';
        } else if (motivation == 'I want to lose weight') {
          _plan = 'slim';
        } else {
          _plan = 'ERROR';
        }
      });
    });
    SharedPreferencesHelper.getHeight(prefs).then((height) {
      setState(() {
        this._heightFeet = height ~/ 12.0;
        this._heightInches = height % 12;
      });
    });
    SharedPreferencesHelper.getWeight(prefs).then((weight) {
      setState(() {
        this._weight = weight;
      });
    });
    SharedPreferencesHelper.getExperience(prefs).then((experience) {
      setState(() {
        this._experience = experience;
      });
    });
  }

  TextStyle _textStyle() {
    return TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400);
  }

  void _setInitValues() {
    int beginner = 0;
    int normal = 10;
    int pro = 20;
    int error = 9999;
    SharedPreferencesHelper.setOnBoardingStatus(true, prefs);
    SharedPreferencesHelper.setUserLevel(1);
    SharedPreferencesHelper.setCurrentProgress(0);
    SharedPreferencesHelper.setProgressToLevelUp(0);
    if (_experience == 'I have no gym experience') {
      SharedPreferencesHelper.setChestLevel(beginner);
      SharedPreferencesHelper.setBackLevel(beginner);
      SharedPreferencesHelper.setArmsLevel(beginner);
      SharedPreferencesHelper.setShouldersLevel(beginner);
      SharedPreferencesHelper.setLegsLevel(beginner);
      SharedPreferencesHelper.setStrengthLevel(beginner);
      SharedPreferencesHelper.setWeightLossLevel(beginner);
    } else if (_experience == 'I have some gym experience') {
      SharedPreferencesHelper.setChestLevel(normal);
      SharedPreferencesHelper.setBackLevel(normal);
      SharedPreferencesHelper.setArmsLevel(normal);
      SharedPreferencesHelper.setShouldersLevel(normal);
      SharedPreferencesHelper.setLegsLevel(normal);
      SharedPreferencesHelper.setStrengthLevel(normal);
      SharedPreferencesHelper.setWeightLossLevel(normal);
    } else if (_experience == 'I have gym experience') {
      SharedPreferencesHelper.setChestLevel(pro);
      SharedPreferencesHelper.setBackLevel(pro);
      SharedPreferencesHelper.setArmsLevel(pro);
      SharedPreferencesHelper.setShouldersLevel(pro);
      SharedPreferencesHelper.setLegsLevel(pro);
      SharedPreferencesHelper.setStrengthLevel(pro);
      SharedPreferencesHelper.setWeightLossLevel(pro);
    } else {
      SharedPreferencesHelper.setChestLevel(error);
      SharedPreferencesHelper.setBackLevel(error);
      SharedPreferencesHelper.setArmsLevel(error);
      SharedPreferencesHelper.setShouldersLevel(error);
      SharedPreferencesHelper.setLegsLevel(error);
      SharedPreferencesHelper.setStrengthLevel(error);
      SharedPreferencesHelper.setWeightLossLevel(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(24.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 14.0),
                Image(
                  image: AssetImage('assets/workoutplan.png'),
                  width: 300.0,
                  height: 200.0,
                ),
                SizedBox(height: 14.0),
                Column(
                  children: <Widget>[
                    Text(
                      'About You',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w900,
                        color: Colors.orange[700],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10.0),
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '• $_firstName $_lastName',
                            style: _textStyle(),
                          ),
                          Text(
                            '• $_gender',
                            style: _textStyle(),
                          ),
                          Text(
                            '• $_motivation',
                            style: _textStyle(),
                          ),
                          Text(
                            '• $_heightFeet feet $_heightInches inches',
                            style: _textStyle(),
                          ),
                          Text(
                            '• $_weight',
                            style: _textStyle(),
                          ),
                          Text(
                            '• $_experience',
                            style: _textStyle(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 70.0),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Based on your entered data, you have been assigned the $_plan plan. ',
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 40.0),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.deepOrange),
                  ),
                  minWidth: 30.0,
                  height: 50.0,
                  color: Colors.orange[700],
                  textColor: Colors.white,
                  child: Text(
                    'Start Workout',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    _setInitValues();
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => Tabs()),
                      (Route<dynamic> route) => false,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
