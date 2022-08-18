import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personinfo/widgets/customDialog/views/pagebuilderone.dart';
import 'package:personinfo/widgets/customDialog/widgets/custombutton.dart';

import '../views/pagebuildertwo.dart';

class MyCustomDialog extends StatefulWidget {
  @override
  State<MyCustomDialog> createState() => _MyCustomDialogState();
}

class _MyCustomDialogState extends State<MyCustomDialog> {
  List<Widget> numberOfPage = <Widget>[
    PageBuilderOne(),
    PageBuilderTwo(),
  ];
  PageController controller = PageController();
  int pageNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      elevation: 16,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.58,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0,0.25],
            colors: [
              Color(0xffFFE4C8),
              Color(0xffffffff),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 350,
                margin: EdgeInsets.only(top: 2),
                // color: Colors.white,
                child: PageView(
                  children: numberOfPage,
                  controller: controller,
                  onPageChanged: (num) {
                    setState(
                      () {
                        pageNumber = num;
                        print(pageNumber);
                      },
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  2,
                  (index) => Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: AnimatedContainer(
                      curve: Curves.ease,
                      duration: Duration(microseconds: 500),
                      width: pageNumber == index ? 50 : 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: pageNumber == index
                            ? Color(0xFFFFBE78)
                            : Color(0xFFF0F0F0),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          pageNumber == index ? '${index + 1}/2' : '',  //$index
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ).toList(),
              ),
              CustomButton(),
            ],
          ),
        ),
      ),
    );
  }
}
