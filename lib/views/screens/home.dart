import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter_application_walle/controller/apiOper.dart";
import "package:flutter_application_walle/model/photosModel.dart";
import "package:flutter_application_walle/views/screens/home.dart";
import "package:flutter_application_walle/views/widget/CustomAppBar.dart";
import 'package:flutter_application_walle/views/widget/SearchBar1.dart';
import "package:flutter_application_walle/views/widget/catBlock.dart";
import "package:flutter_application_walle/views/widget/gridView.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<PhotosModel> trendingWallList;
  GetTrendingWallpapers() async{
    trendingWallList = await ApiOperations.getTrendingWallpapers();
    setState(() {
      
    });
  }
  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    GetTrendingWallpapers();
  }


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
              child: SearchBar1(query: '',),
            ),
      
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: trendingWallList.length,
                    itemBuilder: (context,index)=> CatBlock(imgSrc: trendingWallList[index].imgSrc,),
                    
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
                    itemCount: trendingWallList.length,
                    itemBuilder:((context,index)=>GridImage(imgSrc:trendingWallList[index].imgSrc)),
                    
                    ),
                 ),
               ),
      
      
      
      
      
      
      
      
      
      
              
          ]
          ),
      ),

    );
  }
}