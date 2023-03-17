
import 'package:flutter/material.dart';

import '../common/cubic_progress.dart';
import 'current_repair_line.dart';

class CurrentRepairs extends StatelessWidget {
  const CurrentRepairs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Card(
          elevation: 2,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 6, vertical: 11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Всего 10"),
                  Text(" Почти завершено 3"),
                  CubicProgress(finalCount: 3,),
                  TextButton.icon(
                    onPressed: () {

                    },
                    icon: Icon(Icons.add),
                    label: Text("Новый ремонт")
                  )
                ],
              )
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return CurrentRepairLine(
                titleAvto: 'Audi',
                clientIdentifier: 'Вова Бутырский',
                cost: '100 000',
              );
            }
          ),
        ),
      ],
    );
  }
}
