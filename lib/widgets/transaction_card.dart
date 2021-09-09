import 'package:first_app/constants/app_textstyle.dart';
import 'package:first_app/data/transaction_data.dart';
import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  final TransactionModel transaction;
  const TransactionCard({Key? key, required this.transaction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 30,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: transaction.color,
                ),
                child: Image(
                  image: AssetImage(transaction.avatar),
                ),
                // child: Image.asset(transaction.avatar),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    transaction.name,
                    style: AppTextStyle.LISTTILE_TITLE,
                  ),
                  Text(
                    transaction.month,
                    style: AppTextStyle.LISTTILE_SUB_TITLE,
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    transaction.currentBalance,
                    style: AppTextStyle.LISTTILE_TITLE,
                  ),
                  Row(
                    children: [
                      transaction.changePercentageIndicator == "up"
                          ? Icon(
                              Icons.arrow_upward,
                              size: 10,
                              color: Colors.green,
                            )
                          : Icon(
                              Icons.arrow_downward,
                              size: 10,
                              color: Colors.red,
                            ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        transaction.changePercentage,
                        style: AppTextStyle.LISTTILE_SUB_TITLE,
                      )
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
