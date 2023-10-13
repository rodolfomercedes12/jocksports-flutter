import 'package:flutter/material.dart';

class BetResult {
  String teamOneName;
  String teamTwoName;
  String teamOneImg;
  String teamTwoImg;
  Color teamOneColor;
  Color teamTwoColor;
  String betStatus;
  String betTitle;
  String userBetTeam;
  String betNumbers;

  BetResult(
      {required this.teamOneName,
      required this.teamTwoName,
      required this.teamOneImg,
      required this.teamTwoImg,
      required this.teamOneColor,
      required this.teamTwoColor,
      required this.betStatus,
      required this.betTitle,
      required this.userBetTeam,
      required this.betNumbers});
}
