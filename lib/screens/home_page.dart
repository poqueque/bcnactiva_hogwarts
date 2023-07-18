import 'package:flutter/material.dart';

class CharacterDetail extends StatelessWidget {
  const CharacterDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Harry Potter App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.network(
                "https://static.wikia.nocookie.net/esharrypotter/images/8/8d/PromoHP7_Harry_Potter.jpg/revision/latest/scale-to-width-down/1000?cb=20160903184919"),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star_border),
                    Icon(Icons.star_border),
                  ],
                ),
                Text("89 reviews"),
              ],
            ),
            const Text("Harry Potter",
                style: TextStyle(
                  fontSize: 24,
                )),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.fitness_center),
                    Text("Strenght"),
                    Text("9"),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.auto_fix_normal),
                    Text("Magic"),
                    Text("10"),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.fitness_center),
                    Text("Speed"),
                    Text("7"),
                  ],
                )
              ],
            )
          ],
        ));
  }
}
