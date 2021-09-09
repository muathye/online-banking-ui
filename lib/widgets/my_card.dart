import 'package:first_app/constants/app_textstyle.dart';
import 'package:first_app/data/card_data.dart';
import 'package:flutter/material.dart';
import '../data/card_data.dart';

class MyCard extends StatelessWidget {
  final CardModel card;
  const MyCard({required this.card});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 200,
      width: 350,
      decoration: BoxDecoration(
        color: card.cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "CARD NAME",
                    style: AppTextStyle.MY_CARD_TITLE,
                  ),
                  Text(
                    card.cardHolderName,
                    style: AppTextStyle.MY_CARD_SUBTITLE,
                  ),
                ],
              ),
              Text(
                card.cardNumber,
                style: AppTextStyle.MY_CARD_SUBTITLE,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "EXPIRE DATE",
                        style: AppTextStyle.MY_CARD_TITLE,
                      ),
                      Text(
                        card.expDate,
                        style: AppTextStyle.MY_CARD_SUBTITLE,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "CVV NUMBER",
                        style: AppTextStyle.MY_CARD_TITLE,
                      ),
                      Text(
                        card.cvv,
                        style: AppTextStyle.MY_CARD_SUBTITLE,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: 50,
                child: Image(
                  // TODO: user master card image
                  image: AssetImage("assets/images/ic_launcher.png"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
