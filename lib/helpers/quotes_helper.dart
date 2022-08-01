import 'package:db_miner/models/quotes_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class QuotesHelper {
  QuotesHelper._();

  static final QuotesHelper quotesHelper = QuotesHelper._();

  Database? db;

  String dbName = "miner.db";
  String tableName = "quotes";
  String colId = "id";
  String colTitle = "title";
  String colImg = "image";

  Future<Database?> initDB() async {
    String path = join(await getDatabasesPath(), dbName);

    db = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      String query =
          "CREATE TABLE IF NOT EXISTS $tableName ($colId INTEGER PRIMARY KEY AUTOINCREMENT, $colTitle TEXT);";

      await db.execute(query);
    });
    return db;
  }

  Future<int> insert1() async {
    db = await initDB();




    String query = "INSERT INTO $tableName ($colTitle) VALUES('The purpose of Over lives is to be happy');";

    return await db!.rawInsert(query);


  }
  Future<int> insert2() async {
    db = await initDB();




    String query = "INSERT INTO $tableName ($colTitle) VALUES('Every strike brings me closer \n          to the next home run');";

    return await db!.rawInsert(query);


  }
  Future<int> insert3() async {
    db = await initDB();



    String query = "INSERT INTO $tableName ($colTitle) VALUES('  Life is really simple, but men \ninsist on making it complicated');";

    return await db!.rawInsert(query);


  }
  Future<int> insert4() async {
    db = await initDB();




    String query = "INSERT INTO $tableName ($colTitle) VALUES('The healthiest response to life is joy');";

    return await db!.rawInsert(query);


  }
  Future<int> insert5() async {
    db = await initDB();




    String query = "INSERT INTO $tableName ($colTitle) VALUES('Life is a flower of which love is the honey');";

    return await db!.rawInsert(query);


  }

  // Future<int> image1() async {
  //   db = await initDB();
  //
  //   String query = "INSERT INTO $tableName ($colImg) VALUES('assets/img/1.jpg');";
  //
  //   return await db!.rawInsert(query);
  //
  //
  // }
  // Future<int> image2() async {
  //   db = await initDB();
  //
  //   String query = "INSERT INTO $tableName ($colImg) VALUES('assets/img/2.jpg');";
  //
  //   return await db!.rawInsert(query);
  //
  //
  // }
  // Future<int> image3() async {
  //   db = await initDB();
  //
  //   String query = "INSERT INTO $tableName ($colImg) VALUES('assets/img/3.jpg');";
  //
  //   return await db!.rawInsert(query);
  //
  //
  // }
  // Future<int> image4() async {
  //   db = await initDB();
  //
  //   String query = "INSERT INTO $tableName ($colImg) VALUES('assets/img/4.jpg');";
  //
  //   return await db!.rawInsert(query);
  //
  //
  // }
  // Future<int> image5() async {
  //   db = await initDB();
  //
  //   String query = "INSERT INTO $tableName ($colImg) VALUES('assets/img/5.jpeg');";
  //
  //   return await db!.rawInsert(query);
  //
  //
  // }

  Future<List<QuotesModel>> fetch() async {
    db = await initDB();

    String query = "SELECT * FROM $tableName";

    List<Map<String, dynamic>> data = await db!.rawQuery(query);

    List<QuotesModel> allData =
        data.map((e) => QuotesModel.fromMap(e)).toList();

    return allData;
  }

  Future<int> deleteAllData() async {
    db = await initDB();


    String query = "DELETE FROM $tableName";


    return await db!.rawDelete(query);
  }
}
