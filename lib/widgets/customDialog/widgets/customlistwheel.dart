import 'package:flutter/material.dart';
import 'package:personinfo/widgets/customDialog/classmodal/states_model.dart';
import 'package:personinfo/widgets/customDialog/widgets/customwheeltile.dart';

class CustomListWheel extends StatefulWidget {
  @override
  State<CustomListWheel> createState() => _CustomListWheelState();
}

class _CustomListWheelState extends State<CustomListWheel> {
  List<States> states = [];
  String currentState = "Select Account";

  @override
  void initState() {
    super.initState();
    states = allStates();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          bottom: 0,
          child: Container(
            height: 50,
            width: 200,
            child: Center(
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: BoxDecoration(
                  // color: Colors.blueGrey.shade800,
                  color: Color(0xffFEF8F1),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.arrow_right,
                      size: 38,
                      color: Color(0xffF8BD59),
                    ),
                    Icon(
                      Icons.arrow_left,
                      size: 38,
                      color: Color(0xffF8BD59),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        ListWheelScrollView.useDelegate(
          itemExtent: 50,
          perspective: 0.001,
          diameterRatio: 1.6,
          physics: FixedExtentScrollPhysics(),
          squeeze: 1.0,
          useMagnifier: true,
          magnification: 1.3,
          onSelectedItemChanged: (index) {
            setState(() {
              currentState = states[index].names!;
            });
            // print(currentState);
          },
          childDelegate: ListWheelChildBuilderDelegate(
            childCount: states.length,
            builder: (context, index) {
              return CustomWheelTile(
                currentState == states[index].names
                    ? Colors.black
                    : Colors.grey,
                states[index].names!,
              );
            },
          ),
        ),
      ],
    );
  }
}
