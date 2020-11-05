import 'package:flutter/material.dart';
// import 'package:webview_dialog/button_click_paypal.dart';
import 'package:webview_dialog/make_payment.dart';
// import 'modal_sheet.dart';
// import 'package:webview_dialog/modal_sheet.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MakePayment(),
    );
  }
}

