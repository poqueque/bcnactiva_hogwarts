import 'package:flutter/material.dart';
import 'package:hogwarts/models/character.dart';

import '../widgets/rating.dart';

class CharacterDetail extends StatefulWidget {
  const CharacterDetail({super.key, required this.character});

  final Character character;

  @override
  State<CharacterDetail> createState() => _CharacterDetailState();
}

class _CharacterDetailState extends State<CharacterDetail> {
  int totalReviews = 0;
  int totalStars = 0;
  int lastStarValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('${widget.character.name} details'),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Hero(
                  tag: widget.character.url,
                  child: Image.network(widget.character.url)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Rating(value: (totalStars / totalReviews)),
                  Text("$totalReviews reviews"),
                ],
              ),
              Text(widget.character.name,
                  style: const TextStyle(
                    fontSize: 24,
                  )),
              Rating(
                value: lastStarValue.toDouble(),
                onTap: (value) {
                  debugPrint(value.toString());
                  setState(() {
                    lastStarValue = value;
                    totalReviews++;
                    totalStars = totalStars + value;
                  });
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Icon(Icons.fitness_center),
                      const Text("Strenght"),
                      Text(widget.character.strength.toString()),
                    ],
                  ),
                  Column(
                    children: [
                      const Icon(Icons.auto_fix_normal),
                      const Text("Magic"),
                      Text(widget.character.magic.toString()),
                    ],
                  ),
                  Column(
                    children: [
                      const Icon(Icons.fitness_center),
                      const Text("Speed"),
                      Text(widget.character.speed.toString()),
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
