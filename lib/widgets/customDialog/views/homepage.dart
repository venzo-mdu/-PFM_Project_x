// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:personinfo/widgets/customDialog/widgets/mycustomdialog.dart';

class HomeContent extends StatefulWidget {

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {

  var title = <String>[
    'Traveling',
    'Hospital',
    'Grocery',
    'Saving',
  ];
  var amount = <int>[2000, 1500, 1200, 1000, 600];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('LongPress'),
        centerTitle: true,
      ),
      body: Column(
        children: [

          GestureDetector(
            onTap: (){
              showDialog(
                  context: context,
                  builder: (context){
                    return MyCustomDialog();
                  }
              );
            },
            child: ListTile(
              leading: Icon(Icons.add),
              title: Text(title[0],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
              ),
              subtitle: Text(DateTime.now().toString()),
              trailing: Text(
                amount[0].toString(),
                style: TextStyle(
                    color: Color(
                      0xff4AD66D,
                    ),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.remove),
            title: Text(
              title[1],
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(DateTime.now().toString()),
            trailing: Text(
              amount[1].toString(),
              style: TextStyle(
                  color: Color(
                    0xff4AD66D,
                  ),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text(title[2],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
            subtitle: Text(DateTime.now().toString()),
            trailing: Text(
              amount[2].toString(),
              style: TextStyle(
                  color: Color(
                    0xff4AD66D,
                  ),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          )

        ],
      ),
    );
  }
}