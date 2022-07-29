import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  const CustomContainer({Key? key,
    required this.child,
    this.margin,
    this.padding
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).backgroundColor,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor,
            offset: const Offset(4.0, 4.0),
            spreadRadius: 0.5,
            blurRadius: 5.0
          ),
          BoxShadow(
            color: Theme.of(context).scaffoldBackgroundColor,
            offset: const Offset(-4.0, -4.0),
            spreadRadius: 1,
            blurRadius: 5.0
          ),
        ]
      ),
      child: child
    );
  }
}