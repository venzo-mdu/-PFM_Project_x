import 'package:flutter/material.dart';
import 'package:personinfo/widgets/customDialog/classmodal/CategoryModel.dart';
import 'package:personinfo/widgets/customDialog/views/categorylist.dart';
import 'package:personinfo/widgets/customDialog/widgets/customlistwheel.dart';

class PageBuilderTwo extends StatefulWidget {
  @override
  State<PageBuilderTwo> createState() => _PageBuilderTwoState();
}

class _PageBuilderTwoState extends State<PageBuilderTwo> {
  bool isSelected = false;
  final animationDuration = Duration(milliseconds: 500);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 5, top: 30),
              child: Container(
                child: Text(
                  'Category',
                  style: TextStyle(color: Color(0xFF2D2D2D), fontSize: 18),
                ),
              ),
            ),


            Container(
              margin: const EdgeInsets.only(top: 20.0),
              child: SizedBox(
                width: double.maxFinite,
                height: 75,
                child: GridView.count(
                  crossAxisCount: 4,
                  mainAxisSpacing: 1,
                  children: List.generate(
                    categoryFirst.length,
                    (index) => InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context){
                              return CategoryList();
                            }
                        );
                      },
                      child: Center(
                        child: CategoryModel(
                            categoryModelFirst: categoryFirst[index],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),


            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.transparent,
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: CustomListWheel(),
                ),
              ],
            ),
          ],
        ));
  }
}















// SizedBox(
//   width: 300,
//   height: 100,
//   child: GridView.count(
//     crossAxisCount: 4,
//     mainAxisSpacing: 1,
//     children: List.generate(
//       categoryFirst.length,
//           (index) => Center(
//         child:
//         CategoryModel(categoryModelFirst: categoryFirst[index]),
//       ),
//     ),
//   ),
// ),

// ListView.builder(
//   itemCount: scrollItems.length,
//   itemBuilder: (BuildContext context, int index) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(30),
//         border: Border.all(color: Color(0xFFFEF8F1))
//       ),
//       child: Column(
//         children: [
//           Text('/$scrollItems[1]')
//           // ListTile(
//           //   trailing: Icon(Icons.arrow_left, size: 40,color: Color(0xffF8BD59)),
//           //   title: Center(child: scrollItems[0],),
//           //   leading: Icon(Icons.arrow_right, size: 40,color: Color(0xffF8BD59)),
//           // ),
//
//         ],
//       ),
//     );
//   },
// )

// SizedBox(
//   width: 300,
//   height: 100,
//   child: GridView.count(
//     crossAxisCount: 4,
//     mainAxisSpacing: 1,
//     children: List.generate(
//       categoryFirst.length,
//           (index) => Center(
//         child:
//         CategoryModel(categoryModelFirst: categoryFirst[index]),
//       ),
//     ),
//   ),
// ),
