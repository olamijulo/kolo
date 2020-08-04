import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kolo/constants.dart';
import 'package:kolo/custom_widgets/customFloatingButton.dart';
import 'package:intl/intl.dart';
import 'package:kolo/custom_widgets/components.dart';
import 'package:kolo/screens/landing_screen.dart';
import 'package:kolo/screens/profile_screen.dart';
import 'package:kolo/screens/savings_screen.dart';

class HomePage extends StatefulWidget {
  static final String id = 'homePage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static var  currencyFormatter = NumberFormat.currency(locale: 'en_NG', symbol: '₦');
  int selectedScreen = 0;
  List<Widget> screens =[LandingScreen(currencyFormatter: currencyFormatter), 
                          SavingsScreen(currencyFormatter: currencyFormatter),
                           ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: CustomFloatingActionButton(),
        bottomNavigationBar: Container(
          color: Color(0xff06623b),
          height: 85.0,
          child: CurvedNavigationBar(
            items: <Widget>[
              Icon(Icons.home, size: 35.0, color: Colors.black54),
              Icon(FontAwesomeIcons.bullseye, size: 35.0, color: Colors.black54),
              Icon(Icons.perm_identity, size: 35.0, color: Colors.black54),
            ],
            height: 65.0,
            backgroundColor: Color(0xff06623b),
            animationDuration: Duration(milliseconds: 300),
            onTap: (index) {
              setState(() {
                  selectedScreen = index;
              });
            },
          ),
        ),
         
        body: SingleChildScrollView(
                  child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 70.0),
      child:  screens[selectedScreen]          
      ),
        ),
      ),
    );
  }
}

