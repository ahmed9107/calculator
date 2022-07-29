import 'package:calculator/provider/calculator_provider.dart';
import 'package:calculator/view/widgets/custom_container.dart';
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
    return CustomContainer(
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
                ? const Color(0xFFF3616B)
                : Theme.of(context).primaryColorLight),
          ),
        ),
      ),
    );
  }
}