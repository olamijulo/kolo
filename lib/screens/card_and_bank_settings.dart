import 'package:flutter/material.dart';
import 'package:kolo/custom_widgets/components.dart';

import '../constants.dart';

class CardSettings extends StatelessWidget {
  static String id = 'Card & Bank Settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FlatButton(
            child: Text(
              'CANCEL',
              style: kButtonTextStyle.copyWith(
                  color: kAppNativeColor, fontSize: 15.0),
            ),
            color: Colors.white,
            padding: EdgeInsets.all(15.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0)),
                side: BorderSide(color: kAppNativeColor)),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 80.0, left: 20, right: 20.0),
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
              'Manage Cards & Bank Settings',
              style:
                  kTextStyle.copyWith(color: kAppNativeColor, fontSize: 25.0),
            ),
            SizedBox(height: 30.0),
            CustomContainer(
                border: Border.all(color: Colors.grey),
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Row(children: <Widget>[
                    Icon(
                      Icons.credit_card,
                      size: 30.0,
                    ),
                    SizedBox(width: 20.0),
                    Text('Debit Cards',
                        style: kTextStyle.copyWith(
                            color: Colors.black87,
                            fontSize: 13.0,
                            fontWeight: FontWeight.normal))
                  ]),
                )),
            SizedBox(
              height: 13.0,
            ),
            CustomContainer(
                border: Border.all(color: Colors.grey),
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Row(children: <Widget>[
                    Icon(
                      Icons.security,
                      size: 30.0,
                    ),
                    SizedBox(width: 20.0),
                    Text('Withdrawal Settings',
                        style: kTextStyle.copyWith(
                            color: Colors.black87,
                            fontSize: 13.0,
                            fontWeight: FontWeight.normal))
                  ]),
                )),
          ],
        ),
      ),
    );
  }
}
