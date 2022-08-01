import 'dart:math';
import 'package:clipboard/clipboard.dart';
import 'package:db_miner/models/quotes_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';


class One_Quote extends StatefulWidget {
  const One_Quote({Key? key}) : super(key: key);

  @override
  State<One_Quote> createState() => _One_QuoteState();
}


class _One_QuoteState extends State<One_Quote> {
  List<String> i = [
    'assets/img/1.jpg',
    'assets/img/2.jpg',
    'assets/img/3.jpg',
    'assets/img/4.jpg',
    'assets/img/5.jpeg',
  ];

  List textStyle = [
    GoogleFonts.shadowsIntoLight(
        fontSize: 30, color: Colors.white, fontWeight: FontWeight.w500),
    GoogleFonts.allura(
        fontSize: 30, color: Colors.white, fontWeight: FontWeight.w500),
    GoogleFonts.gochiHand(
        fontSize: 30, color: Colors.white, fontWeight: FontWeight.w500),
    GoogleFonts.caveatBrush(
        fontSize: 30, color: Colors.white, fontWeight: FontWeight.w500),
    GoogleFonts.damion(
        fontSize: 30, color: Colors.white, fontWeight: FontWeight.w500),
  ];

  String firstImage = "assets/img/1.jpg";
  var r1 = Random();

  dynamic firstText = GoogleFonts.lato(
      fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold);
  var t1 = Random();


  @override
  Widget build(BuildContext context) {
    dynamic args = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      body:  Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(firstImage),
                  opacity: 0.6,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: [

                Expanded(
                  flex: 8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          args.toString(),
                          style: firstText,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            int i1 = r1.nextInt(5);
                            setState(() {
                              firstImage = i[i1];
                            });
                          },
                          icon: Icon(
                            Icons.image,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            int i2 = t1.nextInt(5);
                            setState(() {
                              firstText = textStyle[i2];
                            });
                          },
                          icon: const Icon(
                            Icons.text_fields,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        (f == true)
                            ? IconButton(
                          onPressed: () {
                            setState(() {
                              f = false;
                            });
                            showDialog(
                              context: context,
                              builder: (context) => Center(
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 35,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.black,
                                  ),
                                  child: const Text(
                                    "Unfavorite",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 40,
                          ),
                        )
                            : IconButton(
                          onPressed: () {
                            setState(() {
                              f = true;
                              a.add(args.toString());
                            });
                            showDialog(
                              context: context,
                              builder: (context) => Center(
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 35,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.black,
                                  ),
                                  child: const Text(
                                    " favorite",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.star_border_outlined,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        IconButton(
                          onPressed: () async {
                            await Share.share(args.toString());
                          },
                          icon: Icon(
                            Icons.share,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        (c == true)?
                        Container()
                            :IconButton(
                          onPressed: () {
                            setState(() {
                              c == true;
                              FlutterClipboard.copy(args.toString()).then(( value ) => print('copied'));
                            });
                            showDialog(
                              context: context,
                              builder: (context) => Center(
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 35,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.black,
                                  ),
                                  child: const Text(
                                    "Copied..",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.copy_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
    );
  }
}
