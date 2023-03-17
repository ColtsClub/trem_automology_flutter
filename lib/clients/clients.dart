
import 'package:flutter/material.dart';
import 'package:trem_automology_flutter/common/search_input.dart';

import 'client_item.dart';

class Clients extends StatefulWidget {
  const Clients({Key? key}) : super(key: key);

  @override
  State<Clients> createState() => _ClientsState();
}

class _ClientsState extends State<Clients> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchInput(),
        Expanded(
          child: GridView.extent(
            maxCrossAxisExtent: 300,
            children: [
              ClientItem(),
              ClientItem(),
              ClientItem()
            ],
          ),
        ),
      ],
    );
  }
}
