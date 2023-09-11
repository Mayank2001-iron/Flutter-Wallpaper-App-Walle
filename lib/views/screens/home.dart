import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter_application_walle/views/screens/home.dart";
import "package:flutter_application_walle/views/widget/CustomAppBar.dart";
import 'package:flutter_application_walle/views/widget/SearchBar1.dart';
import "package:flutter_application_walle/views/widget/catBlock.dart";
import "package:flutter_application_walle/views/widget/gridView.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: CustomAppBar(),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: SearchBar1(),
            ),
      
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 30,
                    itemBuilder: (context,index)=> CatBlock(),
                    
                    ),
                    
                ),
              ),
      
      
      
      
      
               Container(
                margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                 child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                   child: GridView.builder(
                    physics: BouncingScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 10,
                                      mainAxisSpacing: 10,
                                      mainAxisExtent: 400
                                      ), 
                    itemCount: 16,
                    itemBuilder:((context,index)=>GridImage()),
                    
                    ),
                 ),
               ),
      
      
      
      
      
      
      
      
      
      
              
          ]
          ),
      ),

    );
  }
}