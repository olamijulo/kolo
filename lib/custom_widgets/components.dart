import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class CustomContainer extends StatelessWidget {

CustomContainer({this.image, this.child, this.height, this.border, this.backgroundColor});

final DecorationImage image;
final Widget child;
final double height;
final backgroundColor;
final Border border;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
              bottomLeft: Radius.circular(10.0)),
          border: border,
          color: backgroundColor,
          image: image),
      child: child
    );
  }
}
