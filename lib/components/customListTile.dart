import 'package:flutter/material.dart';
import 'package:flutternews/model/article_model.dart';
import 'package:flutternews/pages/articles_details_page.dart';

Widget customListTile(Article article, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ArticlePage(
                    article: article,
                  )));
    },
    child: Container(
      margin: EdgeInsets.all(12.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 3.0,
            ),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200.0,
            width: double.infinity,
            decoration: BoxDecoration(
              image: (article.urlToImage != null)
                  ? DecorationImage(
                      image: NetworkImage(article.urlToImage),
                      fit: BoxFit.cover)
                  : DecorationImage(
                      image: NetworkImage(
                          "https://firebasestorage.googleapis.com/v0/b/dojo-c2657.appspot.com/o/Banner%2FDOJO%20-%20HomeBanner.png?alt=media&token=1382d3cd-8c0a-4889-80d5-732068ba23fa"),
                      fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(13.0),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Container(
            padding: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Text(
              article.source.name,
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            article.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    ),
  );
}