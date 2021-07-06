import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../Pages/articlePage.dart';

class FeedCard extends StatelessWidget {
  final String imageUrl, title, dscrp, url;
  FeedCard({
    @required this.imageUrl,
    @required this.title,
    @required this.dscrp,
    @required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ArticlePage(url: url),
          ),
        );
      },
      child: Container(
          margin: EdgeInsets.only(bottom: 30),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: imageUrl.isNotEmpty
                    ? CachedNetworkImage(
                        imageUrl: imageUrl,
                      )
                    : null,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                title,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                dscrp,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          )),
    );
  }
}
