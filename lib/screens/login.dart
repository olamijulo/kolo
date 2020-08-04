import 'package:flutter/material.dart';
import 'package:kolo/constants.dart';
import 'package:kolo/home_page.dart';

import 'registration.dart';

class LoginScreen extends StatelessWidget {
  static final String id = 'loginScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 150.0, left: 40.0, right: 40.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: ListView(
                    children: <Widget>[
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 100.0),
                            Text(
                              'Email Address',
                              style: kTextLabelStyle,
                            ),
                            SizedBox(height: 5.0),
                            TextFormField(
                              decoration: kTextFieldDecoration.copyWith(
                                  hintText: 'Email Address'),
                              style: kInputStyle,
                              keyboardType: TextInputType.emailAddress,
                            ),
                            SizedBox(height: 20.0),
                            Text(
                              'Password',
                              style: kTextLabelStyle,
                            ),
                            TextFormField(
                              decoration: kTextFieldDecoration.copyWith(
                                  hintText: 'Password'),
                              style: kInputStyle,
                              obscureText: true,
                            ),
                            SizedBox(height: 20.0),
                            Row(children: <Widget>[
                              FlatButton(
                                child: Text('LOG IN', style: kButtonTextStyle),
                                padding: EdgeInsets.all(10.0),
                                color: Color(0xff06623b),
                                shape: kButtonBorder,
                                onPressed: () {
                                  Navigator.pushNamed(context, HomePage.id);
                                },
                              ),
                              SizedBox(width: 60.0),
                              FlatButton(
                                child: Text('REGISTER',
                                    style: kButtonTextStyle.copyWith(
                                        color: Colors.black54)),
                                padding: EdgeInsets.only(
                                    top: 10.0,
                                    bottom: 10.0,
                                    left: 20.0,
                                    right: 20.0),
                                color: Color(0xffffffff),
                                shape: kButtonBorder,
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, RegistrationScreen.id);
                                },
                              ),
                            ]),
                            SizedBox(height: 20.0),
                            Center(
                              child: Text(
                                    'Forgot Password?',
                                    style: TextStyle(
                                      fontFamily: 'Segoe-ui',
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff06623b)
                                    ),),
                            ),
                            SizedBox(height: 30.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.fingerprint,
                                  size: 60.0,
                                  color: Color(0xff06623b),
                                ),
                              ],
                            ),
                          ])
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
