import 'package:flutter/material.dart';
class DropDownList extends StatefulWidget {
  double width;
  List<String> data;
  DropDownList(this.width,this.data,{Key? key}) : super(key: key);

  @override
  State<DropDownList> createState() => _DropDownListState();
}

class _DropDownListState extends State<DropDownList> {
  @override
  String? value;
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: widget.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: DropdownButton<String>(
          value: value,
          dropdownColor: Colors.white,
          isExpanded: true,
          underline: Container(),
          onChanged: (value) {setState(() {
            this.value = value;
          });},
          items: widget.data.map((item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
        ),
      ),
    );
  }
}
