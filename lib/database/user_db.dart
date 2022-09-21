import 'dart:io';

import 'package:data_utama_app/model/user_model.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class UserDb {
  static Database? dBase;
  static UserDb? userDb;

  String table = 'tbl_user';
  String colId = 'id';
  String colName = 'name';
  String colGender = 'gender';
  String colEmail = 'email';
  String colPhone = 'phone';
  String colPassword = 'password';
  UserDb._createInstance();

  static final UserDb db = UserDb._createInstance();

  factory UserDb() {
    userDb ??= UserDb._createInstance();
    return userDb!;
  }

  Future<Database> get database async {
    dBase ??= await initializeDatabase();
    return dBase!;
  }

  Future<Database> initializeDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = "${directory.path}users.db";
    var myDatabase = await openDatabase(path, version: 1, onCreate: creatDb);

    return myDatabase;
  }

  void creatDb(Database db, int newVersion) async {
    await db.execute("""CREATE TABLE $table(
        $colId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        $colName TEXT,
        $colGender TEXT,
        $colEmail TEXT,
        $colPhone TEXT,
        $colPassword TEXT
      )
      """);
  }

  Future addUser(User user) async {
    try {
      Database db = await database;

      // var result =
      await db.insert(
        table,
        user.toMap(),
      );

      // return result;

      Get.snackbar(
        'Auth Message !',
        'Pendaftaran berhasil\nSilahkan login',
      );
    } catch (e) {
      Get.snackbar('Auth Message !',
          'Pendaftaran belum berhasil\nSilahkan coba lagi\n$e');
    }
  }

  Future<List<Map<String, dynamic>>> authUser(
    String email,
    String password,
  ) async {
    Database db = await database;
    var sql =
        "$table WHERE $colEmail = '$email' AND $colPassword = '$password'";

    return db.query(sql);
  }

  Future<int?> getCount(tableName) async {
    Database db = await database;
    List<Map<String, dynamic>> x =
        await db.rawQuery('SELECT COUNT (*) from $tableName');
    int? result = Sqflite.firstIntValue(x);
    return result;
  }

  Future<List<Map<String, dynamic>>> getUserMapList() async {
    Database db = await database;
    var result = await db.query(table, orderBy: "$colId ASC");
    return result;
  }

  Future<List<User>> getUserList() async {
    var userMapList = await getUserMapList();
    int? count = await getCount(table);

    List<User> userList = <User>[];
    for (int i = 0; i < count!; i++) {
      userList.add(User.fromMap(userMapList[i]));
    }

    return userList;
  }

  // close() async {
  //   var db = await database;
  //   var result = db.close();
  //   return result;
  // }
}
