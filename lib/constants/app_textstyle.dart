import 'dart:ui';

import 'package:flutter/material.dart';
import 'color_cons.dart';

class AppTextStyle {
  static const TextStyle MY_CARD_TITLE = TextStyle(
    color: kThridColor,
    fontWeight: FontWeight.w700,
    fontSize: 16,
  );

  static const TextStyle MY_CARD_SUBTITLE = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w700,
    fontSize: 18,
  );

  static const TextStyle BODY_TEXT = TextStyle(
    color: kPrimaryColor,
    fontWeight: FontWeight.w700,
    fontSize: 20,
  );
  
  static const TextStyle LISTTILE_TITLE = TextStyle(
    color: kPrimaryColor,
    fontSize: 20,
  );
  
  static const TextStyle LISTTILE_SUB_TITLE = TextStyle(
    color: Colors.grey,
    fontSize: 15,
  );
}
