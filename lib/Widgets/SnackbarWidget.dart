import 'package:flutter/material.dart';



void showSnackBarwid({required BuildContext context,required String message,required Color backgroundColor}) {
    final snackBar = SnackBar(
      content: Text('$message'),
      backgroundColor: backgroundColor,
        shape: StadiumBorder()
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }