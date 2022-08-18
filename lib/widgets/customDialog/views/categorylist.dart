import 'package:flutter/material.dart';
import 'package:personinfo/widgets/customDialog/classmodal/CategoryModel.dart';

class CategoryList extends StatefulWidget {

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  TextEditingController editingController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      elevation: 16,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 0.35],
            colors: [Color(0xffFFE4C8), Color(0xffffffff)],
          ),
        ),
        padding: EdgeInsets.all(5),
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.58,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 5, top: 10, right: 5),
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Color(0xffFEF8F1),
                        borderRadius: BorderRadius.circular(25)),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context, true);
                      },
                      child: Image(
                          image: AssetImage(
                        'assets/images/Arrow - Down.png',
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 225, top: 10),
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Color(0xffFEF8F1),
                        borderRadius: BorderRadius.circular(25)),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context, true);
                      },
                      child: Image(
                          image: AssetImage(
                        'assets/images/Vector.png',
                      )),
                    ),
                  ),
                )
              ],
            ),

            Container(
              margin: EdgeInsets.only(top: 15, left: 15, right: 10),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: TextField(
                controller: editingController,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search, color: Color(0xffFFBE78), size: 25,),
                  hintText: 'Category',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 15, left: 15)
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







            Container(
              margin: EdgeInsets.only(top: 20, left: 20, right: 20),
              width: double.infinity,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  'Save',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
