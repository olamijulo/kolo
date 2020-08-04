import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kolo/constants.dart';
import 'package:intl/intl.dart';
import 'package:kolo/custom_widgets/components.dart';

import 'kolo.dart';

class SavingsScreen extends StatelessWidget {
  SavingsScreen({this.currencyFormatter});
  final NumberFormat currencyFormatter;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text('Savings',
            style: kTextStyle.copyWith(fontSize: 40.0, color: Colors.black)),
        Text(
          '${currencyFormatter.format(30000)}',
          style: kTextStyle.copyWith(fontSize: 25.0, color: kAppNativeColor),
        ),
        SizedBox(height: 40.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, KoloScreen.id);
                  },
              child: CustomContainer(
                height: 80.0,
                border: Border.all(color: Color(0xffe6e6e6)),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.shieldAlt,
                        color: kAppNativeColor,
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Kolo',
                            style: kTextStyle.copyWith(
                                color: kAppNativeColor, fontSize: 16.0),
                          ),
                          Text(
                            '${currencyFormatter.format(30000)}',
                            style: kTextStyle.copyWith(
                                color: Colors.black, fontSize: 14.0),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )),
            SizedBox(width: 10.0),
            Expanded(
                child: CustomContainer(
              height: 80.0,
              border: Border.all(color: Color(0xffe6e6e6)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.lock,
                      color: Color(0xff00cc00),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Safelock',
                          style: kTextStyle.copyWith(
                              color: Color(0xff00cc00), fontSize: 16.0),
                        ),
                        Text(
                          '${currencyFormatter.format(0)}',
                          style: kTextStyle.copyWith(
                              color: Colors.black, fontSize: 14.0),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )),
          ],
        )
      ],
    );
  }
}
