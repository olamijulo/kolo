import 'package:flutter/material.dart';
import 'package:kolo/custom_widgets/components.dart';
import 'package:intl/intl.dart';
import 'package:kolo/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({
    Key key,
    @required this.currencyFormatter,
  }) : super(key: key);

  final NumberFormat currencyFormatter;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Olamijulo,',
                      style: TextStyle(
                          fontFamily: 'Segoe-ui',
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold)),
                  Container(
                    height: 50.0,
                    width: 50.0,
                    child: FittedBox(
                      child: CircleAvatar(
                          backgroundColor: Color(0xff06623b),
                          child: Icon(
                            Icons.person,
                            size: 20.0,
                          )),
                    ),
                  )
                ]),
            Text(
              'Good Morning 🌤️',
              style: kTextStyle.copyWith(
                  color: Colors.black38, fontSize: 12.0),
            ),
            SizedBox(height: 5.0),
            CustomContainer(
              image: DecorationImage(
                  image: AssetImage('images/container-bg-2.jpg'),
                  fit: BoxFit.cover),
              height: 120.0,
              border: Border.all(color: Colors.grey),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 20.0),
                child: Row(children: <Widget>[
                  Icon(
                    FontAwesomeIcons.shieldAlt,
                    size: 25.0,
                    color: Colors.white,
                  ),
                  SizedBox(width: 20.0),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Total Savings', style: kTextStyle),
                        Text('${currencyFormatter.format(30000)}',
                            style: kTextStyle.copyWith(fontSize: 26.0))
                      ])
                ]),
              ),
            ),
            SizedBox(height: 40.0),
            CustomContainer(
              height: 100.0,
              border: Border.all(color: Colors.green),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 20.0),
                child: Row(children: <Widget>[
                  Icon(
                    Icons.thumb_up,
                    color: Colors.green,
                  ),
                  SizedBox(width: 12.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'See your recent activities',
                        style: kTextStyle.copyWith(
                            color: Colors.green, fontSize: 15.0),
                      ),
                      Text(
                        'See your most recent activities on kolo',
                        style: kTextStyle.copyWith(
                            fontSize: 12.0, color: Colors.black45),
                      )
                    ],
                  )
                ]),
              ),
            )
          ],
        ),
      ],
    );
  }
}
