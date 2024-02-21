import 'dart:convert';

import 'article_models.dart';

SuccessResponseModels successResponseFromJson(String str) =>
    SuccessResponseModels.fromJson(json.decode(str));

String successResponseToJson(SuccessResponseModels data) =>
    json.encode(data.toJson());

class SuccessResponseModels {
  final String status;
  final int totalResult;
  final List<ArticlesModels> articles;

  SuccessResponseModels({
    required this.status,
    required this.totalResult,
    required this.articles,
  });

  factory SuccessResponseModels.fromJson(Map<String, dynamic> json) =>
      SuccessResponseModels(
        status: json["status"],
        totalResult: json["totalResult"],
        articles: List<ArticlesModels>.from(
            json["articles"].map((x) => ArticlesModels.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "totalResult": totalResult,
        "articles": List<dynamic>.from(articles.map((x) => x.toJson())),
      };
}
