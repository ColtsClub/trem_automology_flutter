
import 'package:flutter/material.dart';

class ClientItem extends StatefulWidget {
  const ClientItem({Key? key}) : super(key: key);

  @override
  State<ClientItem> createState() => _ClientItemState();
}

class _ClientItemState extends State<ClientItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.all(Radius.circular(4))
        ),
      ),
    );
  }
}
