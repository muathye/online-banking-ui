import 'package:first_app/constants/app_textstyle.dart';
import 'package:first_app/data/card_data.dart';
import 'package:first_app/widgets/my_card.dart';

import '../constants/color_cons.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  _CardScreenState createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My Cards",
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: ListView.separated(
              itemBuilder: (context, index) {
                return MyCard(card: myCards[index]);
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 20,
                );
              },
              itemCount: myCards.length,
              shrinkWrap: true,
            ),
          ),
          CircleAvatar(
            radius: 40,
            child: Icon(
              Icons.add,
              size: 50,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "ADD CARD",
            style: AppTextStyle.LISTTILE_TITLE,
          )
        ],
      ),
    );
  }
}
