import 'dart:convert';

import 'package:flutter_application_walle/model/categoryModel.dart';
import 'package:flutter_application_walle/model/photosModel.dart';
import 'package:http/http.dart' as http;
class ApiOperations{
  static  late List<PhotosModel> trendingWallpapers=[];
  static  late List<PhotosModel> searchWallpapersList=[];
  static  late List<CategoryModel> getCategoriesList=[];

  // static List<CategoryModel> getCategoriesList()
  // {
  //   List categoryName=["Cars","Nature","Bikes","Street","City","Flower"];
  //   categoryModeList.clear();

  // }
  


  static Future<List<PhotosModel>> getTrendingWallpapers() async
  {
    await http.get(
      Uri.parse("https://api.pexels.com/v1/curated"),
      headers: {"Authorization" : "zbDINaTEYDNqg1SAi7o60gXeVqKq6EHO2SrGud5M1X90gJq4peN2uAs1"},
    ).then((value) {
      Map<String, dynamic> jsonData = jsonDecode(value.body);
      List photos = jsonData['photos'];
      photos.forEach((element) {
        trendingWallpapers.add(PhotosModel.fromAPI2App(element));
      });
    });
   return trendingWallpapers;
  }


  static Future<List<PhotosModel>> searchWallpapers(String query) async
  {

    await http.get(
        Uri.parse("https://api.pexels.com/v1/search?query=$query&per_page=30&page=1"),
        headers: {"Authorization" : "zbDINaTEYDNqg1SAi7o60gXeVqKq6EHO2SrGud5M1X90gJq4peN2uAs1"},
      ).then((value) {
        Map<String, dynamic> jsonData = jsonDecode(value.body);
        List photos = jsonData['photos'];
        searchWallpapersList.clear();
        photos.forEach((element) {
          searchWallpapersList.add(PhotosModel.fromAPI2App(element));
        });
      });
    return searchWallpapersList;
  }
}