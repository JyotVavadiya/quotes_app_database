import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category_List extends StatefulWidget {
  const Category_List({Key? key}) : super(key: key);

  @override
  State<Category_List> createState() => _Category_ListState();
}

class _Category_ListState extends State<Category_List> {
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
          "All Category",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.pinkAccent,
                    radius: 35,
                    child: Text("LI", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),),
                  ),
                  SizedBox(width: 20,),
                  Text("Life Quotes", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),),
                ],
              ),

            ),
            Divider(
              thickness: 1,
              indent: 110,
              endIndent: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.indigo,
                    radius: 35,
                    child: Text("MO", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),),
                  ),
                  SizedBox(width: 20,),
                  Text("Motivational Quotes", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),),
                ],
              ),

            ),
            Divider(
              thickness: 1,
              indent: 110,
              endIndent: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.amber,
                    radius: 35,
                    child: Text("LO", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),),
                  ),
                  SizedBox(width: 20,),
                  Text("Love Quotes", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),),
                ],
              ),

            ),
            Divider(
              thickness: 1,
              indent: 110,
              endIndent: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 35,
                    child: Text("ED", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),),
                  ),
                  SizedBox(width: 20,),
                  Text("Education Quotes", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),),
                ],
              ),

            ),
            Divider(
              thickness: 1,
              indent: 110,
              endIndent: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.purple,
                    radius: 35,
                    child: Text("PO", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),),
                  ),
                  SizedBox(width: 20,),
                  Text("Positive Quotes", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),),
                ],
              ),

            ),
            Divider(
              thickness: 1,
              indent: 110,
              endIndent: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.blueAccent,
                    radius: 35,
                    child: Text("AM", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),),
                  ),
                  SizedBox(width: 20,),
                  Text("Ambition Quotes", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),),
                ],
              ),

            ),
            Divider(
              thickness: 1,
              indent: 110,
              endIndent: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.deepOrangeAccent,
                    radius: 35,
                    child: Text("FR", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),),
                  ),
                  SizedBox(width: 20,),
                  Text("Friends Quotes", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),),
                ],
              ),

            ),
            Divider(
              thickness: 1,
              indent: 110,
              endIndent: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.brown,
                    radius: 35,
                    child: Text("HA", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),),
                  ),
                  SizedBox(width: 20,),
                  Text("Happiness Quotes", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),),
                ],
              ),

            ),
            Divider(
              thickness: 1,
              indent: 110,
              endIndent: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    radius: 35,
                    child: Text("BI", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),),
                  ),
                  SizedBox(width: 20,),
                  Text("Birds Quotes", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),),
                ],
              ),

            ),
          ],
        ),
      ),
    );
  }
}
