import 'package:flutter/material.dart';
import '../constants/color_cons.dart';

class CardModel {
  String cardHolderName;
  String cardNumber;
  String expDate;
  String cvv;
  Color cardColor;

  CardModel({
    required this.cardHolderName,
    required this.cardNumber,
    required this.expDate,
    required this.cvv,
    required this.cardColor,
  });
}

List<CardModel> myCards = [
  CardModel(
    cardHolderName: 'Muath Swadi',
    cardNumber: "**** **** **** 1234",
    expDate: "12/21",
    cvv: "**4",
    cardColor: kPrimaryColor,
  ),
  CardModel(
    cardHolderName: 'Bio Tree',
    cardNumber: "**** **** **** 1234",
    expDate: "01/22",
    cvv: "**3",
    cardColor: kSecondaryColor,
  ),
];
