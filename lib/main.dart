import 'package:final_project_flutter_nurakhmadsustantyo/providers/article_providers.dart';
import 'package:final_project_flutter_nurakhmadsustantyo/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ArticlesProvider(),
        ),
        // ChangeNotifierProvider(
        //   create: (_) => AlbumDetailProvider(),
        // ),
        // ChangeNotifierProvider(create: (_) => UserProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: const Color.fromARGB(255, 15, 117, 235),
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
