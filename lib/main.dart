import 'package:calculator/provider/calculator_provider.dart';
import 'package:calculator/screens/calculator.dart';
import 'package:calculator/model/historyitem.dart';
import 'package:calculator/screens/history.dart';
import 'package:calculator/utils/constants/colors.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(HistoryItemAdapter());
  await Hive.openBox<HistoryItem>('history');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CalculatorProvider>(
      create: (_) => CalculatorProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.backgroundColor,
          brightness: Brightness.dark,
          appBarTheme: const AppBarTheme(
            color: AppColors.backgroundColor,
            elevation: 0.0,
          ),
          textTheme: TextTheme(
            headline3: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
            caption: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.grey[700],
              fontSize: 18.0,
            ),
          ),
          colorScheme: ColorScheme.fromSwatch().copyWith(secondary: AppColors.yellowColor),
        ),
        routes: {
          '/': (context) => const Calculator(),
          '/history': (context) => History(),
        },
      ),
    );
  }
}
