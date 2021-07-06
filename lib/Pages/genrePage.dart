import 'package:flutter/material.dart';
import 'package:news_app/components/articleClass.dart';
import '../data/genreArticleList.dart';
import '../cards/feedCard.dart';

class GenrePage extends StatefulWidget {
  final String category;
  GenrePage({@required this.category});

  @override
  _GenrePageState createState() => _GenrePageState();
}

class _GenrePageState extends State<GenrePage> {
  List<Article> _genreArticleList = [];
  bool _isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getArticle();
  }

  void getArticle() async {
    GenreArticleList newArticle = GenreArticleList();
    await newArticle.getArticleList(widget.category);
    _genreArticleList = newArticle.articles;
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
        actions: [
          Opacity(
            opacity: 0,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Icon(
                Icons.share,
              ),
            ),
          )
        ],
      ),
      body: _isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.all(10),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: _genreArticleList.length,
                  itemBuilder: (context, index) {
                    return FeedCard(
                      imageUrl: _genreArticleList[index].urlToImage,
                      title: _genreArticleList[index].title,
                      dscrp: _genreArticleList[index].description,
                      url: _genreArticleList[index].url,
                    );
                  },
                ),
              ),
            ),
    );
  }
}
