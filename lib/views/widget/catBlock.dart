import "package:flutter/material.dart";
import "package:flutter_application_walle/controller/apiOper.dart";
import "package:flutter_application_walle/model/photosModel.dart";
import "package:flutter_application_walle/views/screens/categoryScreen.dart";

class CatBlock extends StatefulWidget {
  String imgSrc;
  String query;
  CatBlock({super.key,required this.imgSrc,required this.query});

  @override
  State<CatBlock> createState() => _CatBlockState();
}

class _CatBlockState extends State<CatBlock> {
  late List<PhotosModel> searchResults;
  

  GetSearchResults()async{
    searchResults =await ApiOperations.searchWallpapers(widget.query);

    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryScreen(query: widget.query)));
      },
      child: Container(
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
                                widget.imgSrc,
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
                        widget.query,
                        style: TextStyle(color: Colors.grey,),
                        ),
                    ),
                   
          ]
        ),
      ),
    );
  }
}