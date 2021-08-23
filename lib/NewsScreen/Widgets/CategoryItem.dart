import 'package:flutter/material.dart';
import 'package:news_app_alex/model/category.dart';
class CategoryItem extends StatelessWidget {
Function onCategoryClicked;

  Category category;

  CategoryItem(this.category,this.onCategoryClicked);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(){
        onCategoryClicked(category);
      } ,
      child: Container(
        width: 180,
        height: 160,
        decoration: BoxDecoration(
          color: category.backgroundColor,
   borderRadius:category.rightSided?
   BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)
         ,bottomRight: Radius.circular(20)):
   BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)
         ,bottomLeft: Radius.circular(20))
        ),
        child: Column(
          children:[Image.asset(category.imagePath,width: 160,height: 160,),
         Text(category.title,style: TextStyle(fontSize: 22,color: Colors.white),)
          ],
        ),
      ),
    );
  }
}
