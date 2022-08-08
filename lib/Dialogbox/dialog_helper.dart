
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:trading_demo/Dialogbox/Company_dialog.dart';
import 'package:trading_demo/Dialogbox/networkdialog.dart';





class DialogHelper {

  static exit(context) => showDialog(context: context, builder: (context) => BackdropFilter
  (
    filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
    child: CompanyDialog()));
}

class DialogHelper1 {

  static exit(context) => showDialog(context: context, builder: (context) => BackdropFilter
  (
    filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
    child: NetworkDialog()));
}