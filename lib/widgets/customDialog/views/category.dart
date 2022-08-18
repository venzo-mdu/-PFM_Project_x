import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      elevation: 16,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            colors: [Color(0xffFFE4C8), Color(0xffffffff)],
          ),
        ),
        padding: EdgeInsets.all(5),
        width: double.infinity,
        height: 650,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(left: 5,top: 5),
                  child: Container(
                    width: 30, height: 30,

                    decoration: BoxDecoration(
                        color: Color(0xffFEF8F1),
                        borderRadius: BorderRadius.circular(25)
                    ),
                    child:Image(image: AssetImage('assets/images/Arrow - Down.png',)),
                  ),),
                Padding(padding: EdgeInsets.only(left: 230,top: 5),
                child: Container(
                  width: 30, height: 30,
                  decoration: BoxDecoration(
                      color: Color(0xffFEF8F1),
                      borderRadius: BorderRadius.circular(25)
                  ),
                  child:Image(image: AssetImage('assets/images/Vector.png',)),
                ),)
              ],
            ),

            Padding(
              padding: EdgeInsets.only(top: 15, left: 15, right: 10),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text('Category', style: TextStyle(color: Colors.black,fontFamily: 'Gilroy-Medium',fontSize: 19),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Image(image: AssetImage('assets/images/Iconly_Light_Search.png')),
                    )
                  ],
                ),


              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15, top: 15),
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              width: 55, height: 55,
                              decoration: BoxDecoration(
                                  color: Color(0xffFFE2AB),
                                  borderRadius: BorderRadius.circular(25)
                              ),
                              child: Image.asset(
                                'assets/images/football.png',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 15),
                          child: Text(
                            'Games',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Gilroy-Medium",
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Stack(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15, top: 15),
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              width: 55, height: 55,
                              decoration: BoxDecoration(
                                  color: Color(0xffFFDFCD),
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              child: Image.asset(
                                'assets/images/football.png',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 15),
                          child: Text(
                            'Grocery',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Gilroy-Medium",
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Stack(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15, top: 15),
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              width: 55, height: 55,
                              decoration: BoxDecoration(
                                  color: Color(0xffFFA2C0),
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              child: Image.asset(
                                'assets/images/football.png',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 15),
                          child: Text(
                            'Education',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Gilroy-Medium",
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Stack(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15, top: 15),
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              width: 55, height: 55,
                              decoration: BoxDecoration(
                                  color: Color(0xffFFE2AB),
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              child: Image.asset(
                                'assets/images/football.png',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 15),
                          child: Text(
                            'Medicine',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Gilroy-Medium",
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10, top: 15),
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              width: 55, height: 55,
                              decoration: BoxDecoration(
                                  color: Color(0xff7DFFDB),
                                  borderRadius: BorderRadius.circular(25)
                              ),
                              child: Image.asset(
                                'assets/images/football.png',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 15),
                          child: Text(
                            'Garden',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Gilroy-Medium",
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Stack(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15, top: 15),
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              width: 55, height: 55,
                              decoration: BoxDecoration(
                                  color: Color(0xffABC3FF),
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              child: Image.asset(
                                'assets/images/football.png',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 15),
                          child: Text(
                            'Traveling',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Gilroy-Medium",
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Stack(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 5, top: 15),
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              width: 55, height: 55,
                              decoration: BoxDecoration(
                                  color: Color(0xff89DBED),
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              child: Image.asset(
                                'assets/images/football.png',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 10),
                          child: Text(
                            'Photography',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Gilroy-Medium",
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Stack(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15, top: 15),
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              width: 50, height: 55,
                              decoration: BoxDecoration(
                                  color: Color(0xffCAB0FF),
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              child: Image.asset(
                                'assets/images/football.png',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 15),
                          child: Text(
                            'Savings',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Gilroy-Medium",
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15, top: 15),
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              width: 55, height: 55,
                              decoration: BoxDecoration(
                                  color: Color(0xffFFE2AB),
                                  borderRadius: BorderRadius.circular(25)
                              ),
                              child: Image.asset(
                                'assets/images/football.png',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 15),
                          child: Text(
                            'Games',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Gilroy-Medium",
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Stack(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15, top: 15),
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              width: 55, height: 55,
                              decoration: BoxDecoration(
                                  color: Color(0xffFFDFCD),
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              child: Image.asset(
                                'assets/images/football.png',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 15),
                          child: Text(
                            'Grocery',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Gilroy-Medium",
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Stack(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15, top: 15),
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              width: 55, height: 55,
                              decoration: BoxDecoration(
                                  color: Color(0xffFFA2C0),
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              child: Image.asset(
                                'assets/images/football.png',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 15),
                          child: Text(
                            'Education',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Gilroy-Medium",
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Stack(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15, top: 15),
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              width: 55, height: 55,
                              decoration: BoxDecoration(
                                  color: Color(0xffFFE2AB),
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              child: Image.asset(
                                'assets/images/football.png',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 15),
                          child: Text(
                            'Medicine',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Gilroy-Medium",
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15, top: 15),
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              width: 55, height: 55,
                              decoration: BoxDecoration(
                                  color: Color(0xff7DFFDB),
                                  borderRadius: BorderRadius.circular(25)
                              ),
                              child: Image.asset(
                                'assets/images/football.png',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 5),
                          child: Text(
                            'Garden',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Gilroy-Medium",
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Stack(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15, top: 15),
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              width: 55, height: 55,
                              decoration: BoxDecoration(
                                  color: Color(0xffABC3FF),
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              child: Image.asset(
                                'assets/images/football.png',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 15),
                          child: Text(
                            'Traveling',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Gilroy-Medium",
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Stack(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 5, top: 15),
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              width: 50, height: 55,
                              decoration: BoxDecoration(
                                  color: Color(0xff89DBED),
                                  borderRadius: BorderRadius.circular(35)
                              ),
                              child: Image.asset(
                                'assets/images/football.png',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 5),
                          child: Text(
                            'Photography',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Gilroy-Medium",
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Stack(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 5, top: 15),
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              width: 50, height: 55,
                              decoration: BoxDecoration(
                                  color: Color(0xffCAB0FF),
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              child: Image.asset(
                                'assets/images/football.png',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 10),
                          child: Text(
                            'Savings',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Gilroy-Medium",
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 25),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Center(
                  child: Text('Save', style: TextStyle(color: Colors.white),),
                ),
              ),
            )



          ],
        ),
      ),
    );
  }
}
