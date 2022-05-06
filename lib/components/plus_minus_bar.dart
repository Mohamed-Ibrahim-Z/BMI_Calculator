import 'package:flutter/material.dart';

class PlusMinusBar extends StatefulWidget {
  bool isExpanded;
  int weight;
  PlusMinusBar(this.isExpanded,{this.weight = 100,Key? key}) : super(key: key);

  @override
  State<PlusMinusBar> createState() => _PlusMinusBarState();
}

class _PlusMinusBarState extends State<PlusMinusBar> {
  static int tag = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: widget.isExpanded? double.infinity:MediaQuery.of(context).size.width * 0.55,
      height: MediaQuery.of(context).size.width * 0.12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.black,
            heroTag: tag++,
            mini: true,
            onPressed: () {
              widget.weight--;
              setState(() {});
            },
            child: const Icon(Icons.remove),
          ),
          Text(
            widget.weight.toString(),
            style: const TextStyle(fontSize: 20),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: FloatingActionButton(
              backgroundColor: Colors.black,
              heroTag: tag++,
              mini: true,
              onPressed: () {
                widget.weight++;
                setState(() {});
              },
              child: const Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
