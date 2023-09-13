import "package:flutter/material.dart";

class CatBlock extends StatelessWidget {
  String imgSrc;
  CatBlock({super.key,required this.imgSrc});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3),
      child: Stack(
        children: [
                    Container(
                      // height: 180,
                      // width: 70,
                      child: ClipRRect(
                              
                              borderRadius: BorderRadius.circular(12),
                              child: Image.network(
                              fit:BoxFit.cover,
                              imgSrc,
                              ),
                              ),
                    ),

                  Container(
                    // height: 200,
                    // width: 70,
                    decoration: BoxDecoration(
                      color:Colors.black26 ,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),


                  Positioned(
                    left:20,
                    top: 40,
                    child: Text(
                      "Cars",
                      style: TextStyle(color: Colors.grey,),
                      ),
                  ),
                 
        ]
      ),
    );
  }
}