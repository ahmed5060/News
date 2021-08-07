import 'package:flutter/material.dart';
import 'package:news_app_alex/NewsScreen/NewsApp.dart';

void main() {
  runApp(MyApp());
}
class MyThemeData{
  static final primaryColor=Color(0xff39A552);
  static var red=Color(0XFFC91C22);
  static var blue=Color(0XFF003E90);
  static var pink=Color(0XFFED1E79);
  static var orange=Color(0XFFCF7E48);
  static var lightBlue=Color(0XFF4882CF);
  static var yellow=Color(0XFFF2D352);
  static var labelColor=Color(0XFF79828B);

}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

       primaryColor : MyThemeData.primaryColor,
      ),
      routes: {
        NewsAppScreen.ROUTE_NAME:(buildContext)=>NewsAppScreen()
      },
initialRoute: NewsAppScreen.ROUTE_NAME,
    );
  }
}

