import 'package:db_miner/screens/all_quotes.dart';
import 'package:db_miner/screens/category.dart';
import 'package:db_miner/screens/favorite.dart';
import 'package:db_miner/screens/home_screen.dart';
import 'package:db_miner/screens/one_quotes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
     MaterialApp(
      debugShowCheckedModeBanner: false,
       routes: {
        "/":(context)=>Home_Screen(),
         "all_quotes":(context)=>All_Quotes(),
         "one_quotes":(context)=> One_Quote(),
         "favorite":(context)=>Favorite(),
         "category":(context)=> Category_List(),
       },
    ),
  );
}