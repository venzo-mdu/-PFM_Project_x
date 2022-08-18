import 'package:flutter/material.dart';

class CategoryModelFirst {
  CategoryModelFirst(
      {required this.title, required this.image, required this.color});

  String title;
  String image;
  String color;
}

List<CategoryModelFirst> categoryFirst = <CategoryModelFirst>[
  CategoryModelFirst(
      title: 'Games', image: 'assets/images/football.png', color: '0xffFFE2AB'),
  CategoryModelFirst(
      title: 'Grocery',
      image: 'assets/images/grocery.png',
      color: '0xffFFDFCD'),
  CategoryModelFirst(
      title: 'Education',
      image: 'assets/images/education.png',
      color: '0xffFFA2C0'),
  CategoryModelFirst(
      title: 'Search', image: 'assets/images/search.png', color: '0xffF6F6F6'),
];

class CategoryModel extends StatelessWidget {
  const CategoryModel({Key? key, required this.categoryModelFirst})
      : super(key: key);
  final CategoryModelFirst categoryModelFirst;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Color(int.parse(categoryModelFirst.color)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(categoryModelFirst.image),
            ),
          ),
        ),
        Text(
          categoryModelFirst.title,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
