import 'package:final_project_flutter_nurakhmadsustantyo/utils/enums/channel.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../env.dart';
import '../models/article_models.dart';
import '../utils/enums/country.dart';
import '../utils/enums/category.dart';
import 'package:http/http.dart' as http;

class ArticlesProvider with ChangeNotifier {
  static const _baseUrl = 'newsapi.org';
  static const _apiKey = Env.apiKey;

  Future<List<ArticlesModels>> getArticlesData({
    Country country = Country.indonesia,
    Categories category = Categories.allc,
    Channel sources = Channel.bbc,
    String q = '',
  }) async {
    try {
      List<ArticlesModels> appleArticles = <ArticlesModels>[];

      var queryParams = {
        'apiKey': _apiKey,
        'country': country.countryCode,
        'category': category,
        'sources': sources,
        'q': q,
      };

      final url = Uri.http(_baseUrl, 'v2/top-headlines', queryParams);
      final response = await http.get(url);

      final decodedData = response.body;

      print(decodedData);
      return appleArticles;
      // final resp = await http.get(Uri.parse(
      //     'https://newsapi.org/v2/everything?q=apple&from=2024-02-19&to=2024-02-19&sortBy=popularity&apiKey=d9eb200c754f4d9dabc0f3b03ea29c44'));

      // final list = json.decode(resp.body) as List<dynamic>;
      // return list.map((index) => ArticlesModels.fromJson(index)).toList();
    } catch (error) {
      throw Exception('Failed to load news');
    }
  }
}
