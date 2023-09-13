import 'package:flutter/material.dart';

class GridImage extends StatelessWidget {
  String imgSrc;
  GridImage({super.key,required this.imgSrc});

  @override
  Widget build(BuildContext context) {
    return Container(
                    height: 1500,
                    width: 50,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        imgSrc,
                        fit:BoxFit.cover,
                        ),
                    ),

    );
  }
}