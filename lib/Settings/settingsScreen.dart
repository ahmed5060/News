import 'package:flutter/material.dart';
import 'package:news_app_alex/NewsScreen/Widgets/SideMenu.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:news_app_alex/Provider/localizationsProvieder.dart';
import 'package:news_app_alex/Settings/LanguageBottomSheet.dart';
import 'package:news_app_alex/main.dart';
import 'package:provider/provider.dart';
class SettingsScreen extends StatefulWidget {

  static final ROUTE_NAME='settingsScreen';

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
     // final provider=Provider.of<LocalizationsProvider>(context);
      return Scaffold(
        drawer:SideMenu(),
        appBar: AppBar(
          toolbarHeight: 80,
          shape: ContinuousRectangleBorder(
              borderRadius:BorderRadius.only(
                  bottomLeft: Radius.circular(80),
                  bottomRight: Radius.circular(80))
          ),
          title: Center(child: Text(AppLocalizations.of(context).newsApp)),
        ),
        body:Container(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Language :',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
              InkWell(
                onTap: (){
                showLanguageBottomSheet();
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: MyThemeData.primaryColor,width: 2)
                  ),
                  margin: EdgeInsets.all(12),
                  child: Container(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Expanded(child: Text('Language',style: TextStyle(fontSize: 14,color: MyThemeData.primaryColor))),
                        Icon(Icons.arrow_downward_outlined,color: MyThemeData.primaryColor,)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ) ,
      );
      }

  showLanguageBottomSheet(){
    showModalBottomSheet(context: context, builder: (context){
      return LanguageBottomSheet();
    });
  }
}
