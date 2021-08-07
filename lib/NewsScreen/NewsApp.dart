import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:news_app_alex/NewsScreen/CategoriesFragment.dart';
import 'package:news_app_alex/NewsScreen/HomeTabsFragment.dart';
import 'package:news_app_alex/NewsScreen/Widgets/SideMenu.dart';
import 'package:news_app_alex/main.dart';
import 'package:news_app_alex/model/sources_response.dart';
import 'package:http/http.dart' as http;

class NewsAppScreen extends StatefulWidget {
  static final ROUTE_NAME = 'Home';

  @override
  _NewsAppScreenState createState() => _NewsAppScreenState();
}

class _NewsAppScreenState extends State<NewsAppScreen> {
  Future<SourcesResponse> sourceResponse;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sourceResponse = loadSoruces();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:SideMenu(),
      appBar: AppBar(
        toolbarHeight: 80,
        shape: ContinuousRectangleBorder(
        borderRadius:BorderRadius.only(
            bottomLeft: Radius.circular(80),
          bottomRight: Radius.circular(80))
      ),
        
        title: Center(child: Text('News App')),
      ),
      body:CategoriesFragment());
  }
}
/*FutureBuilder<SourcesResponse>(
          future: sourceResponse,
          builder: (buildContext, snapShot) {
            if (snapShot.hasError) {
              print(snapShot.error.toString());
              return Text(snapShot.error.toString());
            } else if (snapShot.hasData) {
              return HomeTabsFragment(snapShot.data.sources);
            } else {
              return Center(child: CircularProgressIndicator());
            }
          }),
    );*/
Future<SourcesResponse> loadSoruces() async {
  Uri uri = Uri.https('newsapi.org', '/v2/top-headlines/sources',
      {'apiKey': 'a2803275cc264f5ab82151862011361a'});
  final response = await http.get(uri);
  print(response.body);
  if (response.statusCode == 200) {
    return SourcesResponse.fromJson(jsonDecode(response.body));
  } else {
    throw (Exception(response.body));
  }
}
