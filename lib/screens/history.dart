import 'package:calculator/model/historyitem.dart';
import 'package:calculator/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class History extends StatelessWidget {
  History({Key? key}) : super(key: key);
  final List<HistoryItem> result = Hive.box<HistoryItem>('history')
      .values
      .toList()
      .reversed
      .toList()
      .cast<HistoryItem>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'History',
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
              Hive.box<HistoryItem>('history').clear();
              final scaffold = ScaffoldMessenger.of(context);
              scaffold.showSnackBar(
                const SnackBar(
                  content: Text('History cleared successfully'),
                  duration: Duration(milliseconds: 400),
                ),
              );
            },
            icon: const Icon(Icons.auto_delete_outlined,),
          ),
        ],
      ),
      body: result.isEmpty
      ? Center(
          child: Text(
            'Empty!',
            style: Theme.of(context).textTheme.caption?.copyWith(fontSize: 12.0),
          ),
        )
      : ListView.separated(
          padding: const EdgeInsets.all(10.0),
          itemCount: result.length,
          separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 10),
          itemBuilder: (BuildContext context, int i) {
            return ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              tileColor: AppColors.buttonsBackgroundColor,
              title: Text(result[i].title),
              subtitle: Text(result[i].subtitle),
            );
          },
        ),
    );
  }
}
