
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:trem_automology_flutter/common/cubic_progress.dart';

class CurrentRepairLine extends StatelessWidget {
   CurrentRepairLine({Key? key,
     required this.titleAvto,
     required this.clientIdentifier,
     required this.cost
   }) : super(key: key);

  String titleAvto;
  String clientIdentifier;
  String cost;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(11),
      child: MaterialButton(
        onPressed: () {

        },
        child: Container(
          height: 90,
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 11),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  TextButton(
                    onPressed: () {

                    },
                    child: Text(titleAvto, style: const TextStyle(fontSize: 21, color: Colors.black),)
                  ),
                  const SizedBox(width: 21,),
                  TextButton(
                    onPressed: () {

                    },
                    child: Text(clientIdentifier),
                  ),
                  Spacer(),
                  Text("Стадия "),
                  CubicProgress(finalCount: 3)
                ],
              ),
              Row(
                children: [
                  const Text("21.02 12:00", style: TextStyle(fontSize: 12),),
                  const Spacer(),
                  Text("$cost руб", style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),)
                ],
              )
            ],
          )
        ),
      ),
    );
  }
}
