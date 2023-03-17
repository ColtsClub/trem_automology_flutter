
import 'package:flutter/material.dart';

class SearchInput extends StatefulWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 9),
      margin: EdgeInsets.symmetric(vertical: 6, horizontal: 5),
      child: Row(
        children: [
          IconButton(
            onPressed: () {

            },
            icon: Icon(Icons.search,),
          ),
          SizedBox(width: 11,),
          Expanded(
            child: TextField(
              decoration: new InputDecoration.collapsed(
                  hintText: 'поиск'
              ),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blueAccent, width: 1),
          borderRadius: const BorderRadius.all(Radius.circular(12))
      ),
    );
  }
}
