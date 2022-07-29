import 'package:calculator/provider/calculator_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculatorButton extends StatelessWidget {
  final String label;
  final bool isColored, isEqualSign, canBeFirst;
  const CalculatorButton(
    this.label, {
    this.isColored = false,
    this.isEqualSign = false,
    this.canBeFirst = true,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final calculatorProvider = Provider.of<CalculatorProvider>(context, listen: false);
    final TextStyle textStyle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: mediaQuery.height/32.5
    );
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
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
            offset: const Offset(-2.0, -2.0),
            spreadRadius: 1,
            blurRadius: 5.0
          ),
        ]
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(20.0),
        onTap: () {
          calculatorProvider.addToEquation(
            label,
            canBeFirst,
            context,
          );
        },
        child: Center(
          child: Text(
              label,
              style: textStyle.copyWith(color: isColored
                ? const Color(0xFFB8575E)
                : Theme.of(context).primaryColorLight),
          ),
        ),
      ),
    );
  }
}