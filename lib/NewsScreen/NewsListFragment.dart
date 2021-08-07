import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:news_app_alex/NewsScreen/NewsListItem.dart';
import 'package:news_app_alex/model/articles_response.dart';
import 'package:news_app_alex/model/sources_response.dart';
import 'package:http/http.dart' as http;
class NewsListFragment extends StatefulWidget {
 Sources source;

 NewsListFragment(this.source);
  @override
  _NewsListFragmentState createState() => _NewsListFragmentState();
}

class _NewsListFragmentState extends State<NewsListFragment> {
  Future<ArticlesResponse> articleResponse;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    articleResponse= loadArticles();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ArticlesResponse>(
      future: articleResponse,
        builder:(buildContext,snapShot){
        if(snapShot.hasError){
        return  Text(snapShot.error.toString());
        }else if(snapShot.hasData){
          return ListView.builder(itemBuilder:(buildContext,index){
            return NewsListItem(snapShot.data.articles[index]);
          },
          itemCount:snapShot.data.articles.length ,
          );
        }
        return Center(child: CircularProgressIndicator());
        });
  }
  
  Future<ArticlesResponse>loadArticles()async{
    Uri uri=Uri.https('newsapi.org','/v2/everything',{
      'apiKey':'a2803275cc264f5ab82151862011361a',
      'sources':widget.source.id
    });
    final response=await http.get(uri);
    print(response.body);
    if(response.statusCode>=200&&response.statusCode<300){
      return  ArticlesResponse.fromJson(jsonDecode(response.body));
    }else {
      throw(Exception(response.body));
    }
  }
}
