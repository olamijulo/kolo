import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.0,
      width: 65.0,
      child: FittedBox(
        child: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          child: Icon(Icons.add, size: 50.0),
          backgroundColor: Color(0xff06623b),
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                  bottomLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(10.0)),
              borderSide: BorderSide(
                color: Color(0xff06623b),
              )),
        ),
      ),
    );
  }
}
