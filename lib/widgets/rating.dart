import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({
    super.key,
    required this.value,
    this.onTap,
  });

  final double value;
  final Function(int)? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 1; i <= 5; i++)
          InkWell(
              onTap: () {
                if (onTap != null) onTap!(i);
              },
              child: (value >= i)
                  ? Icon(Icons.star,
                      color:
                          (onTap != null) ? Colors.purpleAccent : Colors.black)
                  : Icon(Icons.star_border,
                      color: (onTap != null)
                          ? Colors.purpleAccent
                          : Colors.black)),
      ],
    );
  }
}
