import 'package:db_miner/models/quotes_model.dart';
import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        centerTitle: true,
        title: const Text(
          "Favorite",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
        child: ListView.builder(
          itemCount: a.length,
            itemBuilder: (context, i){
           return Column(
             children: [
             Container(
             height: 100,
             width: double.infinity,
             alignment: Alignment.center,
             color: Colors.pinkAccent,
             child: Text(a[i].toString(), style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
           ),
               SizedBox(height: 20,),
             ],
           );
        }),
      ),
    );
  }
}
