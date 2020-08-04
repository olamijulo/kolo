import 'package:flutter/material.dart';
import 'package:kolo/constants.dart';
import 'package:kolo/custom_widgets/components.dart';
import 'package:kolo/screens/account_settings.dart';
import 'package:kolo/screens/card_and_bank_settings.dart';
import 'package:kolo/screens/withdraw_funds.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool switchValue = false;
  bool switchValue1 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'My Account',
              style: kTextStyle.copyWith(color: Colors.black87, fontSize: 35.0),
            ),
            CircleAvatar(
              backgroundColor: kAppNativeColor,
              child: IconButton(
                icon: Icon(Icons.person),
                onPressed: () {
                  Navigator.pushNamed(context, AccountSettings.id);
                },
              ),
            )
          ],
        ),
        Text(
          'Olamijulo Taiwo',
          style: kTextStyle.copyWith(
              color: Colors.black54, fontSize: 13.0, letterSpacing: 2.0),
        ),
        SizedBox(height: 50.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Enable Finger Print',
              style: kTextStyle.copyWith(color: Colors.black87, fontSize: 13.0),
            ),
            Switch(
              activeColor: kAppNativeColor,
              onChanged: (bool value) {
                setState(() {
                  switchValue = value;
                });
              },
              value: switchValue,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Show Dashboard Account Balances',
              style: kTextStyle.copyWith(color: Colors.black87, fontSize: 13.0),
            ),
            Switch(
              activeColor: kAppNativeColor,
              onChanged: (bool value) {
                setState(() {
                  switchValue1 = value;
                });
              },
              value: switchValue1,
            )
          ],
        ),
        SizedBox(
          height: 30.0,
        ),
        CustomContainer(
          child: Padding(
            padding: const EdgeInsets.only(
                top: 8.0, left: 8.0, right: 35.0, bottom: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '# KoloID',
                  style: kTextStyle.copyWith(
                      color: Colors.black87, fontSize: 15.0),
                ),
                Text(
                  'Create a KoloID',
                  style: kTextStyle.copyWith(
                      color: Colors.black45, fontSize: 10.0),
                )
              ],
            ),
          ),
          border: Border.all(color: Colors.grey),
        ),
        SizedBox(height: 40.0),
        GestureDetector(
          child: CustomContainer(
              border: Border.all(color: Colors.grey),
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Row(children: <Widget>[
                  Icon(
                    Icons.person_outline,
                    size: 30.0,
                  ),
                  SizedBox(width: 20.0),
                  Text('My Account Settings',
                      style: kTextStyle.copyWith(
                          color: Colors.black87,
                          fontSize: 13.0,
                          fontWeight: FontWeight.normal))
                ]),
              )),
          onTap: () {
            Navigator.pushNamed(context, AccountSettings.id);
          },
        ),
        SizedBox(height: 15.0),
        GestureDetector(
          child: CustomContainer(
              border: Border.all(color: Colors.grey),
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Row(children: <Widget>[
                  Icon(
                    Icons.attach_money,
                    size: 30.0,
                  ),
                  SizedBox(width: 20.0),
                  Text('Withdraw Funds',
                      style: kTextStyle.copyWith(
                          color: Colors.black87,
                          fontSize: 13.0,
                          fontWeight: FontWeight.normal))
                ]),
              )),
          onTap: () {
            Navigator.pushNamed(context, WithdrawFunds.id);
          },
        ),
        SizedBox(height: 15.0),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, CardSettings.id);
          },
          child: CustomContainer(
              border: Border.all(color: Colors.grey),
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Row(children: <Widget>[
                  Icon(
                    Icons.credit_card,
                    size: 30.0,
                  ),
                  SizedBox(width: 20.0),
                  Text('My Card & Bank Settings',
                      style: kTextStyle.copyWith(
                          color: Colors.black87,
                          fontSize: 13.0,
                          fontWeight: FontWeight.normal))
                ]),
              )),
        ),
        SizedBox(height: 15.0),
        CustomContainer(
            border: Border.all(color: Colors.grey),
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Row(children: <Widget>[
                Icon(
                  Icons.exit_to_app,
                  size: 30.0,
                  color: Colors.red,
                ),
                SizedBox(width: 20.0),
                Text('Log Out',
                    style: kTextStyle.copyWith(
                        color: Colors.red,
                        fontSize: 13.0,
                        fontWeight: FontWeight.normal)),
                SizedBox(
                  width: 165.0,
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  size: 30.0,
                )
              ]),
            ))
      ],
    );
  }
}
