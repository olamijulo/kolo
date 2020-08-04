import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kolo/custom_widgets/components.dart';

import '../constants.dart';

class KoloScreen extends StatefulWidget {
  static String id = 'KoloScreen';

  @override
  _KoloScreenState createState() => _KoloScreenState();
}

class _KoloScreenState extends State<KoloScreen> {
  NumberFormat currencyFormatter =
      NumberFormat.currency(locale: 'en_NG', symbol: '₦');
  static DateFormat dateFormat = DateFormat.yMMMEd('en_US');
  String withdrawalDate = dateFormat.format(DateTime.now());
  List<bool> tranStatus = List.generate(3, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 80.0, left: 20, right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              IconButton(
                padding: EdgeInsets.all(3.0),
                icon: Icon(
                  Icons.arrow_back,
                  color: kAppNativeColor,
                  size: 30.0,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(
                height: 40.0,
              ),
              Center(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'My Kolo Balance',
                        style: kTextStyle.copyWith(
                            color: Colors.black87, fontSize: 25.0),
                      ),
                      Text('${currencyFormatter.format(30000)}',
                          style: kTextStyle.copyWith(
                              color: kAppNativeColor, fontSize: 32.0)),
                    ]),
              ),
              SizedBox(height: 30.0),
              Row(
                children: <Widget>[
                  Expanded(
                    child: CustomContainer(
                        border: Border.all(color: Colors.grey),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'AutoSave Deposit',
                                  style: kTextStyle.copyWith(
                                      color: Colors.black54, fontSize: 10.0),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      '₦1000',
                                      style: kTextStyle.copyWith(
                                          color: Colors.black87,
                                          fontSize: 15.0),
                                    ),
                                    Text(' daily',
                                        style: kTextStyle.copyWith(
                                            color: Colors.black54,
                                            fontSize: 10.0))
                                  ],
                                )
                              ]),
                        )),
                  ),
                  SizedBox(width: 10.0),
                  Expanded(
                    child: CustomContainer(
                        border: Border.all(color: Colors.grey),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text('Next Withdrawal',
                                    style: kTextStyle.copyWith(
                                        color: Colors.black54, fontSize: 10.0)),
                                Text(withdrawalDate,
                                    style: kTextStyle.copyWith(
                                        color: Colors.black87, fontSize: 15.0))
                              ]),
                        )),
                  )
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    FlatButton(
                        child: Text(
                          'QUICK SAVE',
                          style: kButtonTextStyle.copyWith(
                              color: Colors.white, fontSize: 15.0),
                        ),
                        color: kAppNativeColor,
                        padding: EdgeInsets.all(15.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0)),
                            side: BorderSide(color: kAppNativeColor)),
                        onPressed: () {}),
                    SizedBox(
                      height: 20.0,
                    ),
                    FlatButton(
                        child: Text(
                          'TURN ON AUTOSAVE',
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
                        onPressed: () {}),
                    SizedBox(height: 4.0),
                    Text('Your autosave is off',
                        textAlign: TextAlign.center, style: kTextLabelStyle),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        height: 50.0,
                        width: 50.0,
                        child: FlatButton(
                            child: Icon(
                              Icons.account_balance,
                              size: 20.0,
                              color: Color(0xff06631f),
                            ),
                            color: Color(0xff9AFFA9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0)),
                            ),
                            onPressed: () {}),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        height: 50.0,
                        width: 50.0,
                        child: FlatButton(
                            child: Icon(
                              Icons.settings,
                              size: 20.0,
                              color: Color(0xff06631f),
                            ),
                            color: Color(0xff9AFFA9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0)),
                            ),
                            onPressed: () {}),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 50.0),
              Text(
                'My Transactions',
                style:
                    kTextStyle.copyWith(color: Colors.black87, fontSize: 13.0),
              ),
              SizedBox(height: 20.0),
              ToggleButtons(
                children: [
                  Text(
                    'All',
                    style: kTextStyle.copyWith(
                        color: Colors.black87,
                        fontWeight: FontWeight.normal,
                        fontSize: 16.0),
                  ),
                  Text('Credits',
                      style: kTextStyle.copyWith(
                          color: Colors.black87,
                          fontWeight: FontWeight.normal,
                          fontSize: 16.0)),
                  Text('Debit',
                      style: kTextStyle.copyWith(
                          color: Colors.black87,
                          fontWeight: FontWeight.normal,
                          fontSize: 16.0))
                ],
                borderRadius: BorderRadius.circular(15.0),
                constraints:
                    BoxConstraints.tightForFinite(width: 110.0, height: 43.0),
                isSelected: tranStatus,
                onPressed: (index) {},
              ),
              SizedBox(height: 5.0),
              Table(columnWidths: {
                0: FractionColumnWidth(.08),
                1: FractionColumnWidth(.4),
                2: FractionColumnWidth(.6)
              }, children: [
                TableRow(children: <Widget>[
                  TableCell(
                    child: Icon(
                      Icons.fiber_manual_record,
                      color: Colors.green,
                    ),
                  ),
                  TableCell(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                    Text('Deposit Made',
                        style: kTextStyle.copyWith(
                            color: Colors.black87,
                            fontWeight: FontWeight.normal,
                            fontSize: 14.0)),
                      Text('Deposit Made',
                        style: kTextStyle.copyWith(
                            color: Colors.black87,
                            fontWeight: FontWeight.normal,
                            fontSize: 10.0))       
                  ])),
                  TableCell(
                    child: Icon(
                      Icons.fiber_manual_record,
                      color: Colors.green,
                    ),
                  )
                ])
              ])
            ],
          ),
        ),
      ),
    );
  }
}
