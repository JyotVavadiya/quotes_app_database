import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {

  List<String> i = [
    'assets/img/1.jpg',
    'assets/img/2.jpg',
    'assets/img/3.jpg',
    'assets/img/4.jpg',
    'assets/img/5.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        title: const Text(
          "Quotes",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: InkWell(
              child: const Text(
                "❤",
                style: TextStyle(fontSize: 25),
              ),
              onTap: () {
                Navigator.of(context).pushNamed('favorite');
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
              items: i
                  .map(
                    (e) => Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: AssetImage(e),
                              opacity: 0.6,
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "MAY YOU",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "ALWAYS",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "DO WANT YOU ARE AFRAID TO DO",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                  .toList(),

              //Slider Container properties
              options: CarouselOptions(
                enlargeCenterPage: true,
                viewportFraction: 0.9,
                aspectRatio: 2.0,
                initialPage: 2,
                height: 250.0,
                autoPlay: true,
                autoPlayCurve: Curves.easeInOut,
                enableInfiniteScroll: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 1000),
              ),
            ),
            //text
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Text("Most Popular", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
            ),
            //4 box
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap:(){},
                    child: Container(
                      alignment: Alignment.center,
                      height: 120,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue,
                      ),
                      child: Text("Love Quotes", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                    ),
                  ),
                  InkWell(
                    onTap:(){
                      Navigator.of(context).pushNamed('all_quotes');
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 120,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green,
                      ),
                      child: Text("Life Quotes", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap:(){},
                    child: Container(
                      alignment: Alignment.center,
                      height: 120,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.amber,
                      ),
                      child: Text("Motivational\n     Quotes", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                    ),
                  ),
                  InkWell(
                    onTap:(){},
                    child: Container(
                      alignment: Alignment.center,
                      height: 120,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.pink,
                      ),
                      child: Text("Education Quotes", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Divider(
              thickness: 6,
              color: Colors.grey.shade200,
            ),
            //text
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Quotes by category", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pushNamed('category');
                    },
                    child: Text("Show All", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),),
                  ),
                ],
              ),
            ),
            //slider
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 120,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.brown,
                      ),
                      child: Text("Positive Quotes", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      alignment: Alignment.center,
                      height: 120,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.teal,
                      ),
                      child: Text("Ambition Quotes", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      alignment: Alignment.center,
                      height: 120,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.deepOrangeAccent,
                      ),
                      child: Text("Friends Quotes", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      alignment: Alignment.center,
                      height: 120,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueGrey,
                      ),
                      child: Text("Happiness Quotes", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Divider(
              thickness: 6,
              color: Colors.grey.shade200,
            ),
            //text
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Text("Authors", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
            ),
            //4 box
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap:(){},
                    child: Container(
                      alignment: Alignment.center,
                      height: 120,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.indigo,
                      ),
                      child: Text("Animals Quotes", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                    ),
                  ),
                  InkWell(
                    onTap:(){},
                    child: Container(
                      alignment: Alignment.center,
                      height: 120,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                      ),
                      child: Text("Birds Quotes", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap:(){},
                    child: Container(
                      alignment: Alignment.center,
                      height: 120,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.redAccent.shade100,
                      ),
                      child: Text("Art Quotes", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                    ),
                  ),
                  InkWell(
                    onTap:(){},
                    child: Container(
                      alignment: Alignment.center,
                      height: 120,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.cyan,
                      ),
                      child: Text("Family Quotes", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*
 FutureBuilder(
            future: fetchAllData,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasError) {
                return Center(
                  child: Text("ERROR: ${snapshot.error}"),
                );
              } else if (snapshot.hasData) {
                List<QuotesModel> data = snapshot.data;

                return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          child: Text("${data[0].title}"),
                        ),
                      ],
                    );
                  },
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
 */
