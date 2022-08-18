import 'package:flutter/material.dart';

class PageBuilderOne extends StatefulWidget {
  @override
  State<PageBuilderOne> createState() => _PageBuilderOneState();
}

class _PageBuilderOneState extends State<PageBuilderOne> {
  bool isSelected = false;
  final animationDuration = Duration(milliseconds: 500);

  int _currentSliderValue = 0;
  TextEditingController sliderController = TextEditingController();

  @override
  void initState() {
    _currentSliderValue = 8000;
    sliderController = TextEditingController(text: '8000');
    super.initState();
  }

  double currentValue = 0;
  DateTime dateTime = DateTime(2022, 12, 24);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Debit',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isSelected = !isSelected;
                    });
                  },
                  child: AnimatedContainer(
                    height: 30,
                    width: 55,
                    duration: animationDuration,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xFFFEF8F1),
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: AnimatedAlign(
                      duration: animationDuration,
                      alignment: isSelected
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2),
                        child: Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFFFBE78)),
                            child: Icon(
                              isSelected
                                  ? Icons.chevron_right
                                  : Icons.chevron_left,
                              color: Colors.white,
                            )),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Credit',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Amount',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  children: [
                    Text('\₹  ',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400)),
                    Container(
                      margin: EdgeInsets.only(top: 13),
                      transform: Matrix4.translationValues(-15, 0, 0),
                      width: 75,
                      height: 75,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                        ),
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                        controller: sliderController,
                        onChanged: (text) {
                          setState(() {
                            _currentSliderValue = int.parse(text);
                          });
                        },
                      ),
                    ),
                    Container(
                      transform: Matrix4.translationValues(-25, 0, 0),
                      child: Icon(
                        Icons.edit_outlined,
                        size: 23,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(
              height: 5,
            ),

            SliderTheme(
              data: SliderThemeData(
                  thumbColor: Colors.white,
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 20)),
              child: Slider(
                min: 0,
                max: 25000,
                activeColor: Color(0xFFFFBE78),
                inactiveColor: Color(0xFFFEF8F1),
                thumbColor: Colors.white,
                value: _currentSliderValue.toDouble(),
                label: _currentSliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value.toInt();
                    sliderController.text = _currentSliderValue.toString();
                    print(_currentSliderValue);
                  });
                },
              ),
            ),

            SizedBox(
              height: 30,
            ),

            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xFFFEF8F1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                        '${dateTime.day}/${dateTime.month}/${dateTime.year}'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.edit_outlined,
                        color: Color(0xFFFFBE78),
                      ),
                    ),
                  ),
                  VerticalDivider(
                    color: Color(0xFFACACAC),
                    width: 5,
                    indent: 15,
                    endIndent: 15,
                  ),
                  IconButton(
                    onPressed: () async {
                      final date = await pickDate();
                      if (date == null) return;
                      setState(() {
                        dateTime = date;
                      });
                    },
                    icon: Icon(
                      Icons.calendar_month_outlined,
                      color: Color(0xFFFFBE78),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<DateTime?> pickDate() => showDatePicker(
      context: context,
      initialDate: dateTime,
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
      builder: (context, picker ) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Theme(
            data: ThemeData.dark().copyWith(
              colorScheme: ColorScheme.dark(
                primary: Color(0xffFFBE78),
                onPrimary: Colors.white,
                surface: Color(0xffFFBE78),
                onSurface: Colors.black,
              ),
              dialogBackgroundColor: Color(0xffFFFFFF),
            ),
            child: picker!,
          ),
        );
      });
}

//
// Container(
//   child: Column(
//     mainAxisAlignment: MainAxisAlignment.start,
//     children: [
//       Row(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             'Debit',
//             style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
//           ),
//           SizedBox(
//             width: 10,
//           ),
//           GestureDetector(
//             onTap: () {
//               setState(() {
//                 isSelected = !isSelected;
//               });
//             },
//             child: AnimatedContainer(
//               height: 30,
//               width: 60,
//               duration: animationDuration,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(30),
//                 color: Color(0xFFFEF8F1),
//                 border: Border.all(color: Colors.white, width: 2),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.shade400,
//                     spreadRadius: 2,
//                     blurRadius: 10,
//                   ),
//                 ],
//               ),
//               child: AnimatedAlign(
//                 duration: animationDuration,
//                 alignment: isSelected
//                     ? Alignment.centerRight
//                     : Alignment.centerLeft,
//                 child: Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 2),
//                   child: Container(
//                       height: 25,
//                       width: 25,
//                       decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           color: Color(0xFFFFBE78)),
//                       child: Icon(isSelected
//                           ? Icons.chevron_right
//                           : Icons.chevron_left)),
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(
//             width: 10,
//           ),
//           Text(
//             'Credit',
//             style: TextStyle(
//               fontSize: 17,
//             ),
//           ),
//         ],
//       ),
//       SizedBox(
//         height: 15,
//       ),
//       Row(
//         mainAxisAlignment:
//         MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             'Amount',
//             style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.w500),
//           ),
//           Text(
//             currentValue.toString(),
//             style: TextStyle(
//                 fontSize: 14,
//                 fontWeight: FontWeight.w400),
//           ),
//           // Icon(Icons.edit_outlined, size: 18,),
//         ],
//       ),
//
//       // MyCustomSlider(),
//       SizedBox(
//         height: 25,
//       ),
//
//       SliderTheme(
//         data: SliderThemeData(
//           thumbColor: Colors.white,
//           thumbShape: RoundSliderThumbShape(
//               enabledThumbRadius: 20),
//         ),
//         child: Slider(
//             min: 0,
//             max: 25000,
//             activeColor: Color(0xFFFFBE78),
//             inactiveColor: Color(0xFFFEF8F1),
//             thumbColor: Colors.white,
//             value: currentValue,
//             onChanged: (val) {
//               setState(() {
//                 currentValue = val;
//               });
//             }),
//       ),
//
//       Container(
//         width: double.infinity,
//         height: 50,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(30),
//           color: Color(0xFFFEF8F1),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 20),
//               child: Text(
//                   '${dateTime.year}/${dateTime.month}/${dateTime.day}'),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 45),
//               child: IconButton(
//                 onPressed: () {},
//                 icon: Icon(
//                   Icons.edit_outlined,
//                   color: Color(0xFFFFBE78),
//                 ),
//               ),
//             ),
//             VerticalDivider(
//               color: Color(0xFFACACAC),
//               width: 5,
//               indent: 15,
//               endIndent: 15,
//             ),
//             IconButton(
//               onPressed: () async {
//                 final date = await pickDate();
//                 if (date == null) return;
//                 setState(() {
//                   dateTime = date;
//                 });
//               },
//               icon: Icon(
//                 Icons.calendar_month_outlined,
//                 color: Color(0xFFFFBE78),
//               ),
//             )
//           ],
//         ),
//       ),
//     ],
//   ),
// ),
