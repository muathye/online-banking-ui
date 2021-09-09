import 'package:first_app/constants/app_textstyle.dart';
import 'package:first_app/constants/color_cons.dart';
import 'package:first_app/data/card_data.dart';
import 'package:first_app/data/transaction_data.dart';
import 'package:first_app/widgets/my_card.dart';
import 'package:first_app/widgets/transaction_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My Bank",
          style: TextStyle(
            fontFamily: "Poppins",
            color: kPrimaryColor,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(
            8.0,
          ),
          child: CircleAvatar(
            // TODO: use network image
            // backgroundImage: NetworkImage("https://placeing/640/480/people"),
            backgroundImage: AssetImage("assets/images/ic_launcher.png"),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_active_outlined,
              color: Colors.black,
              size: 27,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 240,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return MyCard(card: myCards[index]);
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 10,
                    );
                  },
                  itemCount: myCards.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Recent Transactions",
                style: AppTextStyle.BODY_TEXT,
              ),
              SizedBox(
                height: 15,
              ),
              ListView.separated(
                itemBuilder: (context, index) {
                  return TransactionCard(
                    transaction: myTransactions[index]
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 10,
                  );
                },
                itemCount: myTransactions.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
