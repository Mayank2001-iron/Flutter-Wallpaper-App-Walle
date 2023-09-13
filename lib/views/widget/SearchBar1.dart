// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_application_walle/views/screens/search.dart';



class SearchBar1 extends StatelessWidget {
  String query;
  SearchBar1({super.key,required this.query});

  TextEditingController _searchController = TextEditingController(); 

 
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
              controller: _searchController,
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
              Navigator.push(context,MaterialPageRoute(builder: (context)=>SearchScreen(query:_searchController.text)));
            },
            child: Icon(Icons.search),
            ),


        ],
      ),
    );
  }
}