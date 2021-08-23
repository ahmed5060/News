import 'package:flutter/material.dart';
import 'package:news_app_alex/Provider/localizationsProvieder.dart';
import 'package:news_app_alex/main.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatefulWidget {

  @override
  _LanguageBottomSheetState createState() => _LanguageBottomSheetState();
}
class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
      final provider =Provider.of<LocalizationsProvider>(context);
          return  Column(
          children: [
            InkWell(
                onTap: (){
                  if(provider.language=='ar')
                  provider.changeLanguage('en');
                },
                child: getLanguageRow('english',provider.language=='en')),
            InkWell(
                onTap: (){
                  if(provider.language=='en')
                    provider.changeLanguage('ar');
                },
                child: getLanguageRow('العربيه', provider.language=='ar'))
          ],
        );

    }



  Widget getLanguageRow(String language,bool selected){
    return selected? Container(
      padding: EdgeInsets.all(12),
      child: Row(
        children: [
          Text(language),
          Spacer(),
          Icon(Icons.check,color: MyThemeData.primaryColor,)
        ],
      ),
    ):Container(
      padding: EdgeInsets.all(12),
      child: Row(
        children: [
          Text(language),

        ],
      ),
    );

  }
}

