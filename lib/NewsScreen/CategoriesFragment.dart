import 'package:flutter/material.dart';
import 'package:news_app_alex/NewsScreen/Widgets/CategoryItem.dart';
import 'package:news_app_alex/main.dart';
import 'package:news_app_alex/model/category.dart';

class CategoriesFragment extends StatefulWidget {
  Function onCategoryClicked;
  CategoriesFragment(this.onCategoryClicked);
  @override
  _CategoriesFragmentState createState() => _CategoriesFragmentState();
}

class _CategoriesFragmentState extends State<CategoriesFragment> {
  List<Category> categoriesList=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fillList();
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.all(12),
              child:
              Text('Pick your category of interest',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)),

          Container(
            height: MediaQuery.of(context).size.height*.75,
            child: GridView.builder(
              shrinkWrap: true,
                itemCount:categoriesList.length ,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,mainAxisSpacing: 8,crossAxisSpacing: 8)
                ,itemBuilder: (_,index){
                  return CategoryItem(categoriesList[index],widget.onCategoryClicked);
                },   ),
          ),




        ],
      ),
    ) ;
  }


  void fillList(){
     categoriesList.add(new Category(imagePath: 'assets/ball.png',rightSided: false,id: 'sports',title:'sports',backgroundColor:MyThemeData.red ));
     categoriesList.add(new Category(imagePath: 'assets/Politics.png',rightSided: false,id: 'technology',title:'technology',backgroundColor:MyThemeData.blue ));
     categoriesList.add(new Category(imagePath: 'assets/health.png',id:'health',backgroundColor:MyThemeData.pink,rightSided: false,title: 'health'));
     categoriesList.add(new Category(imagePath: 'assets/science.png',title:'Science',id:'science',backgroundColor:MyThemeData.yellow,rightSided: false));
     categoriesList.add(new Category(imagePath: 'assets/bussines.png',title:'Bussines',id:'business',backgroundColor:MyThemeData.orange,rightSided: true));
     categoriesList.add(new Category(imagePath: 'assets/environment.png',rightSided: false,id: 'entertainment',title:'entertainment',backgroundColor:MyThemeData.red ));


  }
}
