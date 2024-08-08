import 'package:flutter/material.dart';
import 'detailScreen.dart';
import 'favouritePage.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map<String, dynamic>> memeList = [
    {
      "imgUrl": "https://cdn5.vectorstock.com/i/1000x1000/60/04/sad-violin-cartoon-mascot-style-vector-32436004.jpg",
      "heading": "Sad Violin (the meme one)",
      "sound": "sounds/sound_1.mp3",
      "isFavorite": false
    },
    {
      "imgUrl": "https://thumbs.dreamstime.com/b/error-rubber-stamp-word-error-inside-illustration-109026446.jpg",
      "heading": "Error SOUNDSS",
      "sound": "sounds/sound_2.mp3",
      "isFavorite": false
    },
    {
      "imgUrl": "https://uploads.dailydot.com/2023/11/emotional-damage-meme.jpg?q=65&auto=format&w=1600&ar=2:1&fit=crop%201200w,https://uploads.dailydot.com/2023/11/emotional-damage-meme.jpg?q=65&auto=format&w=1200&ar=2:1&fit=crop%201000w,https://uploads.dailydot.com/2023/11/emotional-damage-meme.jpg?q=65&auto=format&w=800&ar=2:1&fit=crop%20800w",
      "heading": "Emotional Damage Meme",
      "sound": "sounds/sound_3.mp3",
      "isFavorite": false
    },
    {
      "imgUrl": "https://www.shutterstock.com/image-vector/boston-terrier-text-somebody-farted-260nw-479974849.jpg",
      "heading": "Fart Meme Sound",
      "sound": "sounds/sound_4.mp3",
      "isFavorite": false
    },
    {
      "imgUrl": "https://img.freepik.com/free-vector/cute-ghost-sleeping-moon-with-candy-pumpkin-basket-cartoon-vector-icon-illustration-science-flat_138676-12646.jpg",
      "heading": "*Snore* mimimimimimi",
      "sound": "sounds/sound_5.mp3",
      "isFavorite": false
    },
    {
      "imgUrl": "https://img.freepik.com/free-photo/representation-collective-mind-process-concept-digital-art-style_23-2151657748.jpg",
      "heading": "Galaxy meme",
      "sound": "sounds/sound_6.mp3",
      "isFavorite": false
    },
    {
      "imgUrl": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Directed_by_Robert_B._Weide.jpg/1200px-Directed_by_Robert_B._Weide.jpg?20230306214723",
      "heading": "Directed by Robert B Weide",
      "sound": "sounds/sound_7.mp3",
      "isFavorite": false
    },
    {
      "imgUrl": "https://images.immediate.co.uk/production/volatile/sites/3/2024/05/FBI-season6-Sky-1-dcca326.jpg?quality=90&webp=true&resize=1200,800",
      "heading": "FBI OPEN UP (with explosion)",
      "sound": "sounds/sound_8.mp3",
      "isFavorite": false
    },
    {
      "imgUrl": "https://img.freepik.com/free-vector/clenched-fist-boom-hit_98292-3947.jpg",
      "heading": "Punch Sound",
      "sound": "sounds/sound_9.mp3",
      "isFavorite": false
    },
    {
      "imgUrl": "https://img.freepik.com/free-vector/cartoon-toddler-wearing-blue-clothes_1308-106741.jpg",
      "heading": "baby laughing meme",
      "sound": "sounds/sound_10.mp3",
      "isFavorite": false
    },
    {
      "imgUrl": "https://img.freepik.com/free-vector/jogging-concept-illustration_114360-328.jpg",
      "heading": "Run Meme",
      "sound": "sounds/sound_11.mp3",
      "isFavorite": false
    },
    {
      "imgUrl": "https://img.freepik.com/free-vector/realistic-galaxy-background_23-2148981095.jpg",
      "heading": "AMONG US",
      "sound": "sounds/sound_12.mp3",
      "isFavorite": false
    },
    {
      "imgUrl": "https://img.freepik.com/premium-photo/lion-cub-sleeping-ground_1254813-75457.jpg",
      "heading": "The Lion Sleeps Tonight (meme)",
      "sound": "sounds/sound_13.mp3",
      "isFavorite": false
    },
    {
      "imgUrl": "https://img.freepik.com/free-photo/view-funny-man-with-green-hair_23-2151180974.jpg",
      "heading": "Louth meme",
      "sound": "sounds/sound_14.mp3",
      "isFavorite": false
    },
    {
      "imgUrl": "https://img.freepik.com/free-vector/grunge-halloween-background-with-hanging-spider_1048-2538.jpg",
      "heading": "spiderman meme song",
      "sound": "sounds/sound_15.mp3",
      "isFavorite": false
    },
    {
      "imgUrl": "https://us-tuna-sounds-images.voicemod.net/3cf66a5f-47d2-40b7-bb86-a89b4ade7fa2-1722491495891.jpg",
      "heading": "Chin Tapak Dum Dum",
      "sound": "sounds/sound_16.mp3",
      "isFavorite": false
    },
  ];

  List<Map<String, dynamic>> favoriteMemes = [];

  void toggleFavorite(Map<String, dynamic> meme) {
    setState(() {
      if (meme['isFavorite']) {
        meme['isFavorite'] = false;
        favoriteMemes.remove(meme);
      } else {
        meme['isFavorite'] = true;
        favoriteMemes.add(meme);
      }
    });
  }

  void navigateToFavorites() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FavoritesPage(favoriteMemes: favoriteMemes),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Meme Sounds',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: navigateToFavorites, // Navigate to FavoritesPage
          ),
        ],
      ),
      body: Container(
        color: Theme.of(context).backgroundColor,
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: memeList.length + 1, // +1 for the "Coming Soon" card
          itemBuilder: (context, index) {
            if (index == memeList.length) {
              return Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: Theme.of(context).cardColor,
                elevation: 5,
                child: InkWell(
                  onTap: () {
                    // Handle "Coming Soon" card tap
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "More Memes Coming Soon!",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey[800],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Icon(
                        Icons.hourglass_empty,
                        size: 50,
                        color: Colors.grey,
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              );
            }

            return Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              color: Colors.white,
              elevation: 5,
              child: ListTile(
                contentPadding: EdgeInsets.all(10),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    memeList[index]['imgUrl'],
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  memeList[index]['heading'],
                  style: TextStyle(
                    color: Colors.blueGrey[800],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(
                    memeList[index]['isFavorite']
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: memeList[index]['isFavorite'] ? Colors.red : Colors.grey,
                  ),
                  onPressed: () => toggleFavorite(memeList[index]),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(
                        meme: memeList[index],
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}