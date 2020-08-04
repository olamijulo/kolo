import 'package:flutter/material.dart';
import 'package:kolo/home_page.dart';
import 'package:kolo/screens/account_settings.dart';
import 'package:kolo/screens/card_and_bank_settings.dart';
import 'package:kolo/screens/kolo.dart';
import 'package:kolo/screens/login.dart';
import 'package:kolo/screens/withdraw_funds.dart';
import 'screens/registration.dart';

void main() => runApp(Kolo());

class Kolo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomePage.id,
      routes: {RegistrationScreen.id : (context)=>RegistrationScreen(),
               LoginScreen.id : (context)=>LoginScreen(),
               HomePage.id : (context)=>HomePage(),
               AccountSettings.id : (context)=>AccountSettings(),
               WithdrawFunds.id: (context)=>WithdrawFunds(),
               CardSettings.id: (context)=>CardSettings(),
               KoloScreen.id: (context)=>KoloScreen()},
    );
  }
}