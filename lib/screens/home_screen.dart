import 'package:final_project_flutter_nurakhmadsustantyo/models/article_models.dart';
import 'package:final_project_flutter_nurakhmadsustantyo/providers/article_providers.dart';
import 'package:final_project_flutter_nurakhmadsustantyo/widgets/home_widget.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  bool isSearching = false;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: !isSearching
            ? Image.asset(
                '../images/logo.png',
                fit: BoxFit.contain,
              )
            : TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    // icon: Icon(Icons.search),
                    hintText: "Seacrh News Here",
                    hintStyle: TextStyle(color: Colors.black)),
              ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {
              setState(() {
                this.isSearching = !this.isSearching;
              });
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(
              title: Text('Language'),
            )
          ],
        ),
      ),
      body: FutureBuilder(
        future: Provider.of<ArticlesProvider>(context).getArticlesData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('error: ${snapshot.error}'));
          } else if (snapshot.data == null) {
            return Center(child: Text('No data available'));
          } else {
            List<ArticlesModels> articles = snapshot.data!;
            return ListView.builder(
              itemCount: articles.length,
              itemBuilder: (context, index) {
                return HomeWidget(
                  source: articles[index].source!,
                  author: articles[index].author!,
                  title: articles[index].title!,
                  description: articles[index].description!,
                  url: articles[index].url!,
                  urlToImage: articles[index].urlToImage!,
                  publishedAt: articles[index].publishedAt!,
                  content: articles[index].content!,
                );
              },
            );
          }
        },
      ),
    );
  }
}
