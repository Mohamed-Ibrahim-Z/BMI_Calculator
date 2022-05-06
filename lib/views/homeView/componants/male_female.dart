import 'package:bmi_calculator/components/text_type.dart';
import 'package:bmi_calculator/views/homeView/componants/gender.dart';
import 'package:flutter/material.dart';
class MaleFemale extends StatefulWidget {
  bool isMale = true;
  bool get male => isMale;
  MaleFemale({Key? key}) : super(key: key);

  @override
  State<MaleFemale> createState() => _MaleFemaleState();
}

class _MaleFemaleState extends State<MaleFemale> {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TextType('Gender', 20),
        Row(
            children: [
              InkWell(
                  onTap: (){widget.isMale = true;setState(() {});},
                  child: Gender('assets/Male.png', 'Male',widget.isMale)
              ),
              const SizedBox(width: 20,),
              InkWell(
                  onTap: (){widget.isMale = false;setState(() {});},
                  child: Gender('assets/Female.png', 'Female',!widget.isMale)
              )
            ]
        ),
      ],
    );
  }

}
