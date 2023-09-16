import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter_application_walle/controller/apiOper.dart";
import "package:flutter_application_walle/model/photosModel.dart";
import 'package:flutter_application_walle/views/screens/homeScreen.dart';
import "package:flutter_application_walle/views/widget/CustomAppBar.dart";
import 'package:flutter_application_walle/views/widget/SearchBar1.dart';
import "package:flutter_application_walle/views/widget/catBlock.dart";
import "package:flutter_application_walle/views/widget/gridImage.dart";

class CategoryScreen extends StatefulWidget {
  String query;
  CategoryScreen({super.key,required this.query});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  late List<PhotosModel> CategoryWallList;

 bool isLoading=true;

  GetTrendingWallpapers() async{
    CategoryWallList = await ApiOperations.searchWallpapers(widget.query);
    setState(() {
      isLoading = false;
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

      body: isLoading ? Center(child: CircularProgressIndicator(),): SingleChildScrollView(
        child: Column(
          children: [

            Stack(
                  children: [
                    Image.network(
                      height:150,
                      width:MediaQuery.of(context).size.width,
                      "https://images.pexels.com/photos/807598/pexels-photo-807598.jpeg?auto=compress&cs=tinysrgb&w=600",
                      fit: BoxFit.cover,
                      ),

                    Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.black38,
                    ),

                    Positioned(
                      top:60,
                      left: 220,
                      child: Text(
                        widget.query,
                        style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),
                        ),
                    )
                  ],

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
                    itemCount: CategoryWallList.length,
                    itemBuilder:((context,index)=>GridImage(imgSrc:CategoryWallList[index].imgSrc)),
                    
                    ),
                 ),
               ),
      
      
      
      
      
      
      
      
      
      
              
          ]
          ),
      ),

    );
  }
}