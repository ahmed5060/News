import 'package:flutter/material.dart';
import 'package:news_app_alex/Settings/settingsScreen.dart';
import 'package:news_app_alex/main.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class SideMenu extends StatelessWidget {
  Function onDrawerCategoryClicked;
   SideMenu({this.onDrawerCategoryClicked});

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
          IconButton(
            onPressed:(){onDrawerCategoryClicked();
            Navigator.pop(context);
            },
            icon: Row(
            children: [
              Icon(Icons.list,color: Colors.black,size: 30,),
              SizedBox(width: 8,),
              Text(AppLocalizations.of(context).categories,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),)
            ],
          ),),
          IconButton(
            onPressed: (){
              Navigator.of(context).pushNamed(SettingsScreen.ROUTE_NAME);
            },
            icon: Row(
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
