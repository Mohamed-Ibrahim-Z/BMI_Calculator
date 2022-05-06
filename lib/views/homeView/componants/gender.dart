
import 'package:flutter/material.dart';

class Gender extends StatefulWidget {
  final String image;
  final String text;
  final bool selected;
  const Gender(this.image,this.text,this.selected,{Key? key}) : super(key: key);

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white38,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: widget.selected? Colors.green: Colors.white38,width: widget.selected? 1 : 0),
      ),
      width: MediaQuery.of(context).size.width/2.34,
      height: MediaQuery.of(context).size.height/5.5,
      child: Column(
        children: [
           Padding(
            padding: const EdgeInsets.only(right: 11.0,top: 7.0),
            child: Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.verified_outlined,color: widget.selected? Colors.green : Colors.white),
            ),
          ),
          Image(
              image: AssetImage(widget.image),
            width: 100,
            height: 100,
          ),
          Text(widget.text),
        ],
      ),
    );
  }
}
