import 'package:flutter/material.dart';
import 'package:news_app_alex/main.dart';
import 'package:news_app_alex/model/sources_response.dart';

class TabItem extends StatelessWidget {
  bool selected;
  Sources source;
  TabItem(this.source,this.selected);
  @override
  Widget build(BuildContext context) {
    return Tab(
      child: selected?
      Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: MyThemeData.primaryColor,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            border: Border.all(color: MyThemeData.primaryColor)
        ),
        child: Text(source.name,style: TextStyle(fontSize: 14,color: Colors.white),),
      )
          :
      Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
            border: Border.all(color: MyThemeData.primaryColor,width: 2)
        ),
        child: Text(source.name,style: TextStyle(fontSize: 14,color: MyThemeData.primaryColor),),
      ),
    );
  }
}
