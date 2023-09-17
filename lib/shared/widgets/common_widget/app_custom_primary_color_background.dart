

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppCustomPrimaryColorBg extends StatelessWidget {
  double? height;
  double? width;
  double? radius;
  Color? color;
  Color? borderColor;
  BoxShape? shape;
  Decoration? decoration;
  Widget? child;

  AppCustomPrimaryColorBg({this.height,this.width,this.color,this.borderColor,this.decoration,this.shape,this.radius,this.child,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height??38,
      width: width??104,

        decoration:decoration?? BoxDecoration(
        color: color??const Color(0xFF073B74),
        borderRadius:shape!=BoxShape.circle? BorderRadius.circular((radius??8.r)):null,
        border: Border.all(color:borderColor?? Colors.white ),
        shape: shape??BoxShape.rectangle,
      ),
      child: Center(child: child),
    );
  }
}
