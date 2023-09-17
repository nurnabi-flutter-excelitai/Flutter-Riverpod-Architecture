


import 'package:flutter/material.dart';

import 'app_custom_primary_color_background.dart';

class AppCustomButton extends StatelessWidget {
  double? height;
  double? width;
  double? radius;
  Color? color;
  EdgeInsetsGeometry? padding;
  Function() onPressed;
  String? title;
  TextStyle? titleStyle;
  Decoration? decoration;
  Color? fontColor;
  Color? borderColor;
  double? fontSize;
  int? maxLine;
  FontWeight? fontWeight;

  AppCustomButton({
    this.height,
    this.width,
    this.radius,
    this.color,
    this.padding,
    required this.onPressed,
    this.maxLine,
    this.decoration,
    this.title,
    this.titleStyle,
    this.fontColor,
    this.fontSize,
    this.fontWeight,
    this.borderColor,


    Key?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: AppCustomPrimaryColorBg(
        height: height,
        width: width,
        radius: radius,
        color: color,
        borderColor: borderColor?? Colors.white,

        decoration: decoration,
        child: Center(child: Padding(
          padding:padding?? const EdgeInsets.symmetric(horizontal: 22,vertical: 3),
          child: Text(title??"Brand",maxLines:maxLine?? 1,style:titleStyle??TextStyle(color:fontColor?? Colors.white,fontSize:fontSize?? 12,fontWeight:fontWeight?? FontWeight.w400),),
        )),
      ),
    );
  }
}
