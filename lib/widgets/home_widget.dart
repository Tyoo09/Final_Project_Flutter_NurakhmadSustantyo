import 'package:final_project_flutter_nurakhmadsustantyo/models/source_models.dart';
import 'package:final_project_flutter_nurakhmadsustantyo/providers/article_providers.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  final SourceModels source;
  final String author;
  final String title;
  final dynamic description;
  final String url;
  final dynamic urlToImage;
  final DateTime publishedAt;
  final dynamic content;

  const HomeWidget({
    Key? key,
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // child: ListView(
      //   children: [
      //     Container(
      //       height: 600,
      //       // color: Colors.green,
      //       child: FutureBuilder<ArticlesProvider>(
      //         future: ArticlesWidget.,
      //         builder: (BuildContext context, snapshot ){},
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
