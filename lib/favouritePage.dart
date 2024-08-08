import 'package:flutter/material.dart';
import 'package:memeappassignment/detailScreen.dart';

class FavoritesPage extends StatelessWidget {
  final List<Map<String, dynamic>> favoriteMemes;

  FavoritesPage({Key? key, required this.favoriteMemes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites', style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),),
        backgroundColor: theme.primaryColor,
      ),
      body: ListView.builder(
        itemCount: favoriteMemes.length,
        itemBuilder: (context, index) {
          final meme = favoriteMemes[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            color: theme.cardColor,
            elevation: 5,
            child: InkWell(
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>DetailScreen(meme: meme)));
              },
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                    child: Image.network(
                      meme["imgUrl"],
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 200,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      meme["heading"],
                      style: theme.textTheme.bodyText1?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
