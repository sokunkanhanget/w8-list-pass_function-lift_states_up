import 'package:flutter/material.dart';
import 'data/jokes.dart';
import 'widgets/favoriteCard.dart';

Color appColor = Colors.green[300] as Color;

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: JokesApp(),
    ));

class JokesApp extends StatefulWidget {
  const JokesApp({super.key});

  @override
  State<JokesApp> createState() => _JokesAppState();
}

class _JokesAppState extends State<JokesApp> {

  // Store the index of the favorite joke
  int? _favoriteIndex;

  // Handle favorite button click
  void onFavoriteClick(int index) {
    setState(() {
      if (_favoriteIndex == index) {
        _favoriteIndex = null;
      } else {
        _favoriteIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: appColor,
        title: const Text("Favorite Jokes"),
      ),

      // Display all jokes
      body: ListView.builder(
        itemCount: jokes.length,
        itemBuilder: (context, index) {
          return FavoriteCard(
            title: jokes[index]["title"]!,
            description: jokes[index]["description"]!,
            isFavorite: _favoriteIndex == index,
            onFavoriteClick: () => onFavoriteClick(index),
          );
        },
      ),
    );
  }
}
