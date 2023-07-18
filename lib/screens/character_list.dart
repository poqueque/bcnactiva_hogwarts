import 'package:flutter/material.dart';
import 'package:hogwarts/screens/home_page.dart';

import '../models/character.dart';

class CharacterList extends StatelessWidget {
  CharacterList({super.key});

  final List<Character> characters = [
    Character(
      name: "Harry Potter",
      url:
          "https://static.wikia.nocookie.net/esharrypotter/images/8/8d/PromoHP7_Harry_Potter.jpg/revision/latest/scale-to-width-down/1200?cb=20160903184919",
      stars: 3,
      reviews: 50,
      strength: 6,
      speed: 8,
      magic: 9,
    ),
    Character(
      name: "Hermione Granger",
      url:
          "https://static.wikia.nocookie.net/warnerbros/images/3/3e/Hermione.jpg/revision/latest/scale-to-width-down/399?cb=20120729103114&path-prefix=es",
      stars: 5,
      reviews: 30,
      strength: 8,
      speed: 10,
      magic: 10,
    ),
    Character(
      name: "Ron Weasly",
      url:
          "https://static.wikia.nocookie.net/esharrypotter/images/6/69/P7_promo_Ron_Weasley.jpg/revision/latest?cb=20150523213430",
      stars: 4,
      reviews: 20,
      strength: 4,
      speed: 6,
      magic: 7,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hogwarts")),
      body: Column(
        children: [
          for (var character in characters)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return CharacterDetail();
                    }));
                  },
                  leading: Image.network(character.url),
                  title: Text(character.name)),
            )
        ],
      ),
    );
  }
}
