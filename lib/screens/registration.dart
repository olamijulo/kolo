import 'package:flutter/material.dart';
import 'package:kolo/constants.dart';

class RegistrationScreen extends StatelessWidget {
  static final String id = 'registrationScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 100.0, left: 10, right: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.close,
                  size: 35.0,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Expanded(
                child: Padding(
                    padding: EdgeInsets.only(top: 50.0, left: 10, right: 10.0),
                    child: ListView(
                      children: <Widget>[
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Text(
                                'Create Account',
                                style: TextStyle(
                                  fontFamily: 'Segoe-ui',
                                  fontSize: 45.0,
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xff06623b),
                                ),
                              ),
                              SizedBox(height: 20.0),
                              Text(
                                  'Create a free account and start a proper savings journey with Kolo',
                                  style: TextStyle(
                                      fontFamily: 'Segoe-ui',
                                      color: Colors.black54)),
                              SizedBox(height: 25.0),
                              Text('Full Name', style: kTextLabelStyle),
                              SizedBox(height: 5.0),
                              TextFormField(decoration: kTextFieldDecoration,
                              style: kInputStyle),
                              SizedBox(height: 30.0),
                              Text('Email Address', style: kTextLabelStyle,),
                              SizedBox(height: 5.0),
                              TextFormField(
                                  decoration: kTextFieldDecoration.copyWith(
                                      hintText: 'Email Address'),
                                      style: kInputStyle,
                                       keyboardType: TextInputType.emailAddress,),
                              SizedBox(height: 30.0),
                              Text('Phone Number', style: kTextLabelStyle),
                              SizedBox(height: 5.0),
                              TextFormField(decoration: kTextFieldDecoration.copyWith(hintText: 'Phone Number'),
                              style: kInputStyle),
                              SizedBox(height: 30.0),
                              Text('Password', style: kTextLabelStyle),
                              SizedBox(height: 5.0),
                              TextFormField(
                                  decoration: kTextFieldDecoration.copyWith(
                                      hintText: 'Password'),
                                      obscureText: true,
                                      style: kInputStyle),
                              SizedBox(height: 30.0),
                              Text('Referrer Phone or Promo Code (Optional)', style: kTextLabelStyle),
                              SizedBox(height: 5.0),
                              TextFormField(
                                  decoration: kTextFieldDecoration.copyWith(
                                      hintText: 'Referrer Phone or Code'),
                                  style: kInputStyle
                                  ),
                              SizedBox(height: 30.0),
                              FlatButton(
                                child: Text('Create Account',
                                style: kButtonTextStyle,),
                                color: Color(0xff06623b),
                                padding: EdgeInsets.all(15.0), 
                                shape: kButtonBorder,
                                onPressed: (){

                                },
                              )
                            ])
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
