import 'dart:convert';

import '../components/articleClass.dart';
import 'package:http/http.dart' as http;

class GenreArticleList {
  List<Article> articles = [];

  void getArticleList(String genre) async {
    String articleUrl =
        'https://newsapi.org/v2/top-headlines?country=in&category=$genre&apiKey=d3f7d92e9b854aeba0edc2df9cfe9bc6';

    var response = await http.get(articleUrl);
    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((elem) {
        if (elem['urlToImage'] != null && elem['description'] != null) {
          Article article = Article(
            author: elem['author'],
            title: elem['title'],
            description: elem['description'],
            url: elem['url'],
            urlToImage: elem['urlToImage'],
            content: elem['content'],
          );
          articles.add(article);
        }
      });
    }
  }
}
