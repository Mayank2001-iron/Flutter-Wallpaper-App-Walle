import 'package:flutter/material.dart';
import 'package:flutter_application_walle/views/screens/FullScreen.dart';

class GridImage extends StatelessWidget {
  String imgSrc;
  GridImage({super.key,required this.imgSrc});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>FullScreen(imgUrl:imgSrc)));
      },
      child: Hero(
        tag:imgSrc,
        child: Container(
                        height: 1500,
                        width: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            imgSrc,
                            fit:BoxFit.cover,
                            ),
                        ),
          
        ),
      ),
    );
  }
}