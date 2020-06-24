import 'package:bmi/components/tile.dart';
import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';

import 'util/gender_enum.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Tile(
                  color: selectedGender == Gender.male
                      ? kActiveCardColour
                      : kInactiveCardColour,
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                ),
                Tile(
                    color: selectedGender == Gender.female
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    })
              ],
            ),
          ),
          Tile(
            color: kActiveCardColour,
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Tile(
                  color: kActiveCardColour,
                ),
                Tile(
                  color: kActiveCardColour,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
