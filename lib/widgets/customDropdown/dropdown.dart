import 'package:flutter/material.dart';
import 'package:personinfo/widgets/customDropdown/expanded.dart';

class DropDown extends StatefulWidget {
  @override
  _DropDownState createState() => _DropDownState();
}

List <String> _list =[
  'Account 1',
  'Account 2',
  'Account 3',
  'Account 4',
  'Account 5',
];



class _DropDownState extends State<DropDown> {

  bool isVisible = true;

  @override
  void initState() {
    // TODO: implement initState
    isVisible = false;
    super.initState();
  }

  bool isStrechedDropDown = false;
  int? groupValue;
  String title = 'Select account';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text(
            "Custom Drop Down ",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Container(
          height: double.infinity,
          width: 250,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [


                    Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffFFBE78)),
                              borderRadius: BorderRadius.all(Radius.circular(27))),
                          child: Column(
                            children: [

                              Visibility(
                                visible: isVisible,
                                child: Container(
                                  margin: EdgeInsets.only(left: 175),
                                  transform: Matrix4.translationValues(0, -15, 0),
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: Color(0xffFF6349),
                                      shape: BoxShape.circle
                                  ),

                                  child: InkWell(
                                    child: Icon(
                                      Icons.close,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                    onTap: (){
                                      setState(() {
                                        isVisible = !isVisible;
                                        title = _list[0];
                                      });
                                    },
                                  ),
                                ),
                              ),
                              Container(
                                // height: 45,
                                  width: double.infinity,
                                  padding: EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                    // border: Border.all(
                                    //   color: Color(0xffFFBE78),
                                    // ),
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(25))),
                                  constraints: BoxConstraints(
                                    minHeight: 45,
                                    minWidth: double.infinity,
                                  ),

                                  alignment: Alignment.center,

                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 10),
                                          child: Text(
                                            title,
                                            style: TextStyle(
                                              fontFamily: 'Gilroy-Medium',
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              isStrechedDropDown =
                                              !isStrechedDropDown;
                                            });
                                          },
                                          child: Icon(isStrechedDropDown
                                              ? Icons.expand_less
                                              : Icons.expand_more, color: Color(0xFFFFBE78),))
                                    ],
                                  )),
                              ExpandedSection(
                                  expand: isStrechedDropDown,
                                  height: 100,
                                  child: ListView.builder(
                                      padding: EdgeInsets.all(0),
                                      // controller: scrollController2,
                                      shrinkWrap: true,
                                      itemCount: _list.length,
                                      itemBuilder: (context, index) {
                                        return RadioListTile(
                                            title: Text(_list.elementAt(index),style: TextStyle(
                                              fontFamily: 'Gilroy-Medium',
                                              fontSize: 16,
                                            ),),
                                            value: index,
                                            controlAffinity: ListTileControlAffinity.trailing,
                                            groupValue: groupValue,
                                            onChanged: (int? val) {
                                              setState(() {
                                                groupValue = val!;
                                                title = _list.elementAt(index);
                                                isVisible = true;
                                                isStrechedDropDown = false;
                                              });
                                            });
                                      })
                              ),






                            ],
                          ),
                        )),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}