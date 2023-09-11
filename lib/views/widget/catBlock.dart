import "package:flutter/material.dart";

class CatBlock extends StatelessWidget {
  const CatBlock({super.key});

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
                              "https://images.pexels.com/photos/11876188/pexels-photo-11876188.jpeg?auto=compress&cs=tinysrgb&w=600")
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