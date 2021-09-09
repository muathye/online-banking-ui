import 'package:flutter/material.dart';
import '../constants/color_cons.dart';

class TransactionModel {
  String name;
  String avatar;
  String currentBalance;
  String month;
  String changePercentageIndicator;
  String changePercentage;
  Color color;

  TransactionModel({
    required this.name,
    required this.avatar,
    required this.currentBalance,
    required this.month,
    required this.changePercentageIndicator,
    required this.changePercentage,
    required this.color,
  });
}

List<TransactionModel> myTransactions = [
  TransactionModel(
    name: 'Muath Swadi',
    avatar: "assets/images/ic_launcher.png",
    currentBalance: "\$5426",
    changePercentage: "0.41%",
    changePercentageIndicator: "up",
    month: "Jan",
    color: kPercentageHighUpIndecatorColor,
  ),
  TransactionModel(
    name: 'Bio Tree',
    avatar: "assets/images/ic_launcher.png",
    currentBalance: "\$4326",
    changePercentage: "1.37%",
    changePercentageIndicator: "down",
    month: "May",
    color: kPercentageDownIndecatorColor,
  ),
  TransactionModel(
    name: 'Gumew Designer',
    avatar: "assets/images/ic_launcher.png",
    currentBalance: "\$1326",
    changePercentage: "3.75%",
    changePercentageIndicator: "down",
    month: "Mar",
    color: kPercentageHighDownIndecatorColor,
  ),
  TransactionModel(
    name: 'Isdra Def',
    avatar: "assets/images/ic_launcher.png",
    currentBalance: "\$2326",
    changePercentage: "0.51%",
    changePercentageIndicator: "up",
    month: "Jun",
    color: kPercentageUpIndecatorColor,
  ),
  TransactionModel(
    name: 'Tree Business',
    avatar: "assets/images/ic_launcher.png",
    currentBalance: "\$4956",
    changePercentage: "1.77%",
    changePercentageIndicator: "down",
    month: "Aug",
    color: kPercentageDownIndecatorColor,
  ),
  TransactionModel(
    name: 'Muath Swadi',
    avatar: "assets/images/ic_launcher.png",
    currentBalance: "\$5426",
    changePercentage: "0.41%",
    changePercentageIndicator: "up",
    month: "Jan",
    color: kPercentageHighUpIndecatorColor,
  ),
  TransactionModel(
    name: 'Bio Tree',
    avatar: "assets/images/ic_launcher.png",
    currentBalance: "\$4326",
    changePercentage: "1.37%",
    changePercentageIndicator: "down",
    month: "May",
    color: kPercentageDownIndecatorColor,
  ),
];
