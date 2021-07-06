import 'package:flutter/material.dart';

class AppBarStyle extends StatelessWidget {
  final bool isHome;
  AppBarStyle({this.isHome});

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
      actions: isHome
          ? []
          : [
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
    );
  }
}
