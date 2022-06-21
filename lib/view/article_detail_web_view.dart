import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../model/article.dart';

class ArticleDetailWebView extends StatelessWidget {
  final Article article;

  const ArticleDetailWebView({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(article.title),
        ),
        body: Center(
          child: WebView(initialUrl: article.url),
        ),
      ),
    );
  }
}
