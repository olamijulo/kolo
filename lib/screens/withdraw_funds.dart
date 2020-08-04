import 'package:flutter/material.dart';
import 'package:kolo/constants.dart';
import 'package:intl/intl.dart';
import 'package:kolo/custom_widgets/components.dart';

class WithdrawFunds extends StatefulWidget {
  static String id = 'Withdraw Funds';

  @override
  _WithdrawFundsState createState() => _WithdrawFundsState();
}

class _WithdrawFundsState extends State<WithdrawFunds> {
  NumberFormat currencyFormatter =
      NumberFormat.currency(locale: 'en_NG', symbol: '₦');
  static DateFormat dateFormat = DateFormat.yMMMMEEEEd('en_US');
  String withdrawalDate = dateFormat.format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 80.0, left: 20, right: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              IconButton(
                padding: EdgeInsets.all(3.0),
                icon: Icon(
                  Icons.close,
                  color: kAppNativeColor,
                  size: 35.0,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 40.0),
              Text(
                'Break Kolo',
                style:
                    kTextStyle.copyWith(color: kAppNativeColor, fontSize: 25.0),
              ),
              SizedBox(height: 15.0),
              Text(
                'Current Kolo savings is: ${currencyFormatter.format(30000)}',
                style:
                    kTextStyle.copyWith(color: Colors.black54, fontSize: 13.0),
              ),
              SizedBox(height: 15.0),
              Text(
                'Use the form below to withdraw from your Kolo savings instantly',
                style: kTextStyle.copyWith(
                    color: Colors.black45,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.0),
              ),
              SizedBox(height: 30.0),
              CustomContainer(
                  backgroundColor: Colors.green,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 27.0, horizontal: 10.0),
                    child: Row(children: <Widget>[
                      Icon(
                        Icons.alarm,
                        color: Colors.white,
                        size: 33.0,
                      ),
                      SizedBox(width: 10.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Your next withdrawal day is:',
                            style: kTextStyle.copyWith(
                                fontSize: 15.0, fontWeight: FontWeight.normal),
                          ),
                          Text(withdrawalDate,
                              style: kTextStyle.copyWith(
                                fontSize: 20.0,
                              ))
                        ],
                      )
                    ]),
                  )),
              SizedBox(height: 30.0),
              CustomContainer(
                  border: Border.all(width: 1.0, color: Colors.greenAccent),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 18.0, horizontal: 10.0),
                    child: Row(children: <Widget>[
                      Icon(
                        Icons.credit_card,
                        color: Colors.green,
                        size: 33.0,
                      ),
                      SizedBox(width: 10.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Your fonds will be sent to your',
                            style: kTextStyle.copyWith(
                                fontSize: 15.0,
                                fontWeight: FontWeight.normal,
                                color: Colors.black54),
                          ),
                          Text(' GTB(0173614629). Tap to change',
                              style: kTextStyle.copyWith(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black54))
                        ],
                      )
                    ]),
                  )),
              SizedBox(height: 40.0),
              Text(
                'Minimum amount to withdraw for now (1000)',
                style: kTextStyle.copyWith(
                    color: Colors.black54, fontSize: 13.0, wordSpacing: 2.0),
              ),
              SizedBox(height: 7.0),
              TextFormField(
                decoration: kTextFieldDecoration.copyWith(hintText: 'e.g 1000'),
                style: kInputStyle,
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20.0),
              Text(
                'Enter your password',
                style: kTextStyle.copyWith(
                    color: Colors.black54, fontSize: 13.0, wordSpacing: 2.0),
              ),
              SizedBox(height: 7.0),
              TextFormField(
                obscureText: true,
                decoration:
                    kTextFieldDecoration.copyWith(hintText: 'Kolo password'),
                style: kInputStyle,
                keyboardType: TextInputType.visiblePassword,
              ),
              SizedBox(height: 40.0,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  FlatButton(
                      child: Text(
                        'BREAK',
                        style: kButtonTextStyle.copyWith(fontSize: 15.0),
                      ),
                      color: Color(0xFFBf2626),
                      padding: EdgeInsets.all(15.0),
                      shape: kButtonBorder,
                      onPressed: () {}),
                  SizedBox(height: 10.0),
                  FlatButton(
                      child: Text(
                        'CANCEL',
                        style: kButtonTextStyle.copyWith(color: Colors.black87, fontSize: 15.0),
                      ),
                      color: Colors.white,
                      padding: EdgeInsets.all(15.0),
                      shape: kButtonBorder,
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
