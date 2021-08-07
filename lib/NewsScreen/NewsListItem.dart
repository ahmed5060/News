import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app_alex/model/articles_response.dart';

class NewsListItem extends StatelessWidget {
 Articles article;
 NewsListItem(this.article);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CachedNetworkImage(
            imageUrl: article.urlToImage,
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                Center(child: CircularProgressIndicator(value: downloadProgress.progress)),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
          SizedBox(height: 8,),
          Text(article.source.name,style: TextStyle(fontSize:14,color: Color(0xff79828B)),textAlign:TextAlign.start ,),
          SizedBox(height: 8,),
          Text(article.title,style: TextStyle(fontSize:18,fontWeight: FontWeight.w600),textAlign:TextAlign.start ),
          Text(article.publishedAt,style: TextStyle(fontSize:13,color: Color(0xff79828B)),textAlign:TextAlign.end ,)

        ],
      ),
    );
  }
}
