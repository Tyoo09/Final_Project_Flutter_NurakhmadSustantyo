import 'dart:convert';

import 'package:final_project_flutter_nurakhmadsustantyo/models/source_models.dart';

String articleToJson(ArticlesModels data) => json.encode(data.toJson());

class ArticlesModels {
  final SourceModels source;
  final String author;
  final String title;
  final dynamic description;
  final String url;
  final dynamic urlToImage;
  final DateTime publishedAt;
  final dynamic content;

  ArticlesModels({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  factory ArticlesModels.fromJson(Map<String, dynamic> json) => ArticlesModels(
        source: SourceModels.fromJson(json["source"]),
        author: json["author"],
        title: json["title"],
        description: json["description"],
        url: json["url"],
        urlToImage: json["urlToImage"],
        publishedAt: DateTime.parse(json["publishedAt"]),
        content: json["content"],
      );

  Map<String, dynamic> toJson() => {
        "source": source.toJson(),
        "author": author,
        "title": title,
        "description": description,
        "url": url,
        "urlToImage": urlToImage,
        "publishedAt": publishedAt.toIso8601String(),
        "content": content,
      };
}
