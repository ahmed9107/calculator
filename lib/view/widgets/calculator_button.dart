import 'package:calculator/provider/calculator_provider.dart';
import 'package:calculator/utils/constants/colors.dart';
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
    final calculatorProvider = Provider.of<CalculatorProvider>(context, listen: false);
    final TextStyle? textStyle = Theme.of(context).textTheme.headline6;
    final mediaQuery = MediaQuery.of(context).size;
    return Material(
      color: AppColors.buttonsBackgroundColor,
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
          child: isEqualSign
          ? Container(
              height: mediaQuery.width * 0.1,
              width: mediaQuery.width * 0.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: AppColors.yellowColor,
              ),
              child: Center(
                child: Text(
                  label,
                  style: textStyle?.copyWith(color: AppColors.backgroundColor),
                ),
              ),
            )
          : Text(
              label,
              style: textStyle?.copyWith(color: isColored ? AppColors.yellowColor : AppColors.whiteColor),
          ),
        ),
      ),
    );
  }
}