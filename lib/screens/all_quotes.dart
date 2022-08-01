import 'package:flutter/material.dart';

import '../helpers/quotes_helper.dart';
import '../models/quotes_model.dart';

class All_Quotes extends StatefulWidget {
  const All_Quotes({Key? key}) : super(key: key);

  @override
  State<All_Quotes> createState() => _All_QuotesState();
}

class _All_QuotesState extends State<All_Quotes> {
  late Future<List<QuotesModel>> fetchAllData;

  @override
  void initState() {
    super.initState();
    QuotesHelper.quotesHelper.deleteAllData();
    QuotesHelper.quotesHelper.insert1();
    QuotesHelper.quotesHelper.insert2();
    QuotesHelper.quotesHelper.insert3();
    QuotesHelper.quotesHelper.insert4();
    QuotesHelper.quotesHelper.insert5();
    fetchAllData = QuotesHelper.quotesHelper.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
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
          "Life Quotes",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: FutureBuilder(
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
                return Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('one_quotes',
                          arguments: data[index].title);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              spreadRadius: 2,
                              blurRadius: 5,
                            ),
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 4,
                            child: Center(
                              child: Text(
                                "${data[index].title}",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 18),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                (s == true)
                                    ? IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.done_all_outlined,
                                          color: Colors.blue,
                                        ),
                                      )
                                    : IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.done_all_outlined,
                                          color: Colors.grey,
                                        ),
                                      ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.star_border_outlined,
                                      color: Colors.grey),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.copy_outlined,
                                    color: Colors.grey,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
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
    );
  }
}
