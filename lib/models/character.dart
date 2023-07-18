class Character {
  final String name;
  final String url;
  double stars = 0;
  int reviews = 0;
  int strength = 0;
  int magic = 0;
  int speed = 0;

  Character({
    required this.name,
    required this.url,
    this.stars = 0,
    this.reviews = 0,
    this.strength = 0,
    this.magic = 0,
    this.speed = 0,
  });
}
