import 'package:flutter/material.dart';

class HomeSlideWidget extends StatelessWidget {
  final dynamic urlToImage;
  final String title;
  final dynamic description;

  const HomeSlideWidget({
    Key? key,
    required this.urlToImage,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: const BoxDecoration(
        color: Colors.amber,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(urlToImage),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            description ?? '',
            style: TextStyle(fontSize: 14),
          )
        ],
      ),
    );
  }
}
