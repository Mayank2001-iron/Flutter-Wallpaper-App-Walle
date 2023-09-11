import 'package:flutter/material.dart';

class GridImage extends StatelessWidget {
  const GridImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                    height: 1500,
                    width: 50,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        "https://images.pexels.com/photos/1624496/pexels-photo-1624496.jpeg?auto=compress&cs=tinysrgb&w=600",
                        fit:BoxFit.cover,
                        ),
                    ),

    );
  }
}