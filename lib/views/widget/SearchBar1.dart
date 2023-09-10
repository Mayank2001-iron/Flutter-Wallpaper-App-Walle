// ignore: file_names
import 'package:flutter/material.dart';
class SearchBar1 extends StatelessWidget {
  const SearchBar1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,),
      decoration: BoxDecoration(
        color: Color.fromARGB(66, 192, 192, 192),
        border: Border.all(color: Colors.black,),
        borderRadius: BorderRadius.circular(25), ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
          
              decoration: InputDecoration( 
              hintText: "Search Wadllpapers",
              errorBorder :InputBorder.none,
              focusedBorder :InputBorder.none,
              focusedErrorBorder :InputBorder.none,
              disabledBorder :InputBorder.none,
              enabledBorder :InputBorder.none,
              border :InputBorder.none,
              ),
          
            ),
          ),

          InkWell(
            onTap: (){
              print("SEarching..............");
            },
            child: Icon(Icons.search),
            ),


        ],
      ),
    );
  }
}