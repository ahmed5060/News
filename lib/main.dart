import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:news_app_alex/NewsScreen/NewsApp.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:news_app_alex/Provider/localizationsProvieder.dart';
import 'package:news_app_alex/Settings/settingsScreen.dart';
import 'package:provider/provider.dart';

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
    return ChangeNotifierProvider<LocalizationsProvider>(
      create: (_)=>LocalizationsProvider(),
      builder: (context,widget){
        final provider =Provider.of<LocalizationsProvider>(context);
        print(provider.language);
        //provider.changeLanguage('ar');
        return  MaterialApp(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: [
            AppLocalizations.delegate, // Add this line
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: [
            Locale('en', ''), // English, no country code
            Locale('ar', ''), // Spanish, no country code
          ],
          locale: Locale(provider.language,''),
          title: 'Flutter Demo',
          theme: ThemeData(

            primaryColor : MyThemeData.primaryColor,
          ),
          routes: {
            NewsAppScreen.ROUTE_NAME:(buildContext)=>NewsAppScreen(),
            SettingsScreen.ROUTE_NAME:(buildContext)=>SettingsScreen()
          },
          initialRoute: NewsAppScreen.ROUTE_NAME,
        );
      },
    );
  }
}
/*

 */

