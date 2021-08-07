import 'package:flutter/material.dart';
import 'package:news_app_alex/main.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width * 0.7,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DrawerHeader(
              decoration: BoxDecoration(color: MyThemeData.primaryColor),
              child: Center(
                  child: Text(
                    'News App',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ))),
          IconButton(icon: Row(
            children: [
              Icon(Icons.list,color: Colors.black,size: 30,),
              SizedBox(width: 8,),
              Text('Categories',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),)
            ],
          ),),
          IconButton(icon: Row(
            children: [
              Icon(Icons.settings,color: Colors.black,size: 30,),
              SizedBox(width: 8,),
              Text('Settings',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),)
            ],
          ),)
        ],
      ),
    );
  }
}
