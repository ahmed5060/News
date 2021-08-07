import 'package:flutter/material.dart';
import 'package:news_app_alex/NewsScreen/Widgets/CategoryItem.dart';
import 'package:news_app_alex/main.dart';

class CategoriesFragment extends StatefulWidget {
  const CategoriesFragment({Key key}) : super(key: key);

  @override
  _CategoriesFragmentState createState() => _CategoriesFragmentState();
}

class _CategoriesFragmentState extends State<CategoriesFragment> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
            padding: EdgeInsets.all(12),
            child: Text('Pick your category of interest',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CategoryItem('assets/ball.png','sports',MyThemeData.red,false),
            CategoryItem('assets/Politics.png','Politics',MyThemeData.blue,true),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CategoryItem('assets/health.png','health',MyThemeData.pink,false),
            CategoryItem('assets/bussines.png','Bussines',MyThemeData.orange,true),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CategoryItem('assets/science.png','Science',MyThemeData.yellow,false),
            CategoryItem('assets/environment.png','environment',MyThemeData.lightBlue,true),
          ],
        )

      ],
    ) ;
  }
}
