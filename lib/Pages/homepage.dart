import 'package:flutter/material.dart';

import '../components/genreClass.dart';
import '../data/genreList.dart';
import '../data/articleList.dart';
import '../components/articleClass.dart';
import '../cards/feedCard.dart';
import '../cards/genreCard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isLoading = true;
  List<GenreClass> _genreList = [];
  List<Article> _articleList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _genreList = getListFunc();
    getArticle();
  }

  void getArticle() async {
    ArticleList newArticle = ArticleList();
    await newArticle.getArticleList();
    _articleList = newArticle.articles;
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black12,
        title: Container(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'New',
                style: TextStyle(
                    color: Colors.blue[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              Text(
                's',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              )
            ],
          ),
        ),
      ),
      body: _isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: _genreList.length,
                        itemBuilder: (context, index) {
                          return GenreCard(
                            genreName: _genreList[index].genreName,
                            imageUrl: _genreList[index].imageUrl,
                          );
                        },
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: ClampingScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemCount: _articleList.length,
                          itemBuilder: (context, index) {
                            return FeedCard(
                              imageUrl: _articleList[index].urlToImage,
                              title: _articleList[index].title,
                              dscrp: _articleList[index].description,
                              url: _articleList[index].url,
                            );
                          },
                        )),
                  ],
                ),
              ),
            ),
    );
  }
}
