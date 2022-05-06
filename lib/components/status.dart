import 'package:bmi_calculator/components/drop_down_list.dart';
import 'package:bmi_calculator/components/plus_minus_bar.dart';
import 'package:bmi_calculator/components/text_type.dart';
import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  final String title;
  List<String> values;
  late PlusMinusBar res = PlusMinusBar(false,);
  Status(this.title,this.values,{Key? key}) : super(key: key);


  @override
  State<Status> createState() => _StatusBarState();
}

class _StatusBarState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextType(
          widget.title,
          15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            widget.res,
            DropDownList(MediaQuery.of(context).size.width * 0.3, widget.values),
          ],
        ),
      ],
    );
  }
}
