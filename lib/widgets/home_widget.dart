import 'package:carousel_slider/carousel_slider.dart';
import '../models/article_models.dart';
import '../models/source_models.dart';
import '../widgets/home_slide_widget.dart';
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
  final List<ArticlesModels> articles;

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
    required this.articles,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 14, left: 16),
        child: Container(
          margin: const EdgeInsets.only(right: 16),
          padding: const EdgeInsets.only(top: 0),
          height: 200,
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  enableInfiniteScroll: false,
                  height: 200,
                  viewportFraction: 1,
                  enlargeCenterPage: true,
                ),
                items: articles.map((article) {
                  return HomeSlideWidget(
                    urlToImage: article.urlToImage,
                    title: article.title,
                    description: article.description,
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
