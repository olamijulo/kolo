import 'package:flutter/material.dart';
import 'package:kolo/custom_widgets/components.dart';
import '../constants.dart';

class AccountSettings extends StatelessWidget {
  static String id = 'Account Settings';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(20.0),
          child: FlatButton(
              child: Text(
                'CANCEL',
                style: kButtonTextStyle.copyWith(color: kAppNativeColor, fontSize: 15.0),
              ),
              color: Colors.white,
              padding: EdgeInsets.all(15.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0)),
                  side: BorderSide(color: kAppNativeColor,)),
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
                icon: Icon(Icons.close,
                color: kAppNativeColor,
                size: 35.0,),
                onPressed: (){
                    Navigator.pop(context);
                },
              ),
              SizedBox(height: 50.0),
              Text(
                'Account Settings',
                style:
                    kTextStyle.copyWith(color: kAppNativeColor, fontSize: 25.0),
              ),
              SizedBox(
                height: 30.0,
              ),
              CustomContainer(
                  border: Border.all(color: Colors.grey),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Row(children: <Widget>[
                      Icon(
                        Icons.person_outline,
                        size: 30.0,
                      ),
                      SizedBox(width: 20.0),
                      Text('Profile Settings',
                          style: kTextStyle.copyWith(
                              color: Colors.black87,
                              fontSize: 13.0,
                              fontWeight: FontWeight.normal))
                    ]),
                  )),
              SizedBox(height: 18.0),
              CustomContainer(
                  border: Border.all(color: Colors.grey),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Row(children: <Widget>[
                      Icon(
                        Icons.face,
                        size: 30.0,
                      ),
                      SizedBox(width: 20.0),
                      Text('Next Of Kin Settings',
                          style: kTextStyle.copyWith(
                              color: Colors.black87,
                              fontSize: 13.0,
                              fontWeight: FontWeight.normal))
                    ]),
                  )),
              SizedBox(height: 18.0),
              CustomContainer(
                  border: Border.all(color: Colors.grey),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Row(children: <Widget>[
                      Icon(
                        Icons.vpn_key,
                        size: 30.0,
                      ),
                      SizedBox(width: 20.0),
                      Text('Password Settings',
                          style: kTextStyle.copyWith(
                              color: Colors.black87,
                              fontSize: 13.0,
                              fontWeight: FontWeight.normal))
                    ]),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
