import 'package:flutter/material.dart';
class CategoryItem extends StatelessWidget {
  String imagePath;
  String categoryId;
  Color backGroundColor;
  bool rightSided;
  CategoryItem(this.imagePath,this.categoryId,this.backGroundColor,this.rightSided);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(top: 12),
      decoration: BoxDecoration(
        color: backGroundColor,
   borderRadius:rightSided?
   BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)
       ,bottomRight: Radius.circular(20)):
   BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)
       ,bottomLeft: Radius.circular(20))
      ),
      child: Column(
        children:[Image.asset(imagePath,width: 160,height: 160,),
       Text(categoryId,style: TextStyle(fontSize: 22,color: Colors.white),)
        ],
      ),
    );
  }
}
