import 'package:calculator/view/widgets/calculator_button.dart';

List<CalculatorButton> buttons = <CalculatorButton>[
  const CalculatorButton('AC', canBeFirst: false),
  const CalculatorButton('⌫', canBeFirst: false),
  const CalculatorButton('.', canBeFirst: false),
  const CalculatorButton(' ÷ ', isColored: true, canBeFirst: false),
  const CalculatorButton('7'),
  const CalculatorButton('8'),
  const CalculatorButton('9'),
  const CalculatorButton(' × ', isColored: true, canBeFirst: false),
  const CalculatorButton('4'),
  const CalculatorButton('5'),
  const CalculatorButton('6'),
  const CalculatorButton(' - ', isColored: true, canBeFirst: false),
  const CalculatorButton('1'),
  const CalculatorButton('2'),
  const CalculatorButton('3'),
  const CalculatorButton(' + ', isColored: true, canBeFirst: false),
  const CalculatorButton('00'),
  const CalculatorButton('0'),
  const CalculatorButton('000'),
  const CalculatorButton('=', isColored: true, canBeFirst: false),
];