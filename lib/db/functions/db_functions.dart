import 'package:demo_login/model/data_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart';

ValueNotifier<List<UserModel>> userlistNotifier = ValueNotifier([]);

late Database _db;
//openDatabase
Future<void> initilizeDatabase() async {
  _db = await openDatabase(
    'User.db',
    version: 1,
    onCreate: (Database db, int version) async {
      await db.execute(
          'CREATE TABLE User(id INTEGER PRIMARY KEY,name TEXT,email TEXT,password TEXT,cpassword TEXT)');
    },
  );
}

Future<void> addUser(UserModel value) async {
  await _db.rawInsert(
      'INSERT INTO user(name,email,password,cpassword) VALUES(?,?,?,?)',
      [value.name, value.email, value.password, value.cpassword]);
  getAllUsers();
  // userlistNotifier.value.add(value);
  userlistNotifier.notifyListeners();
}

Future<void> getAllUsers() async {
  final _values =await _db.rawQuery('SELECT * FROM User');
  print(_values);
  userlistNotifier.value.clear();
  _values.forEach((map)async {
  final user= UserModel.fromMap(map);
    userlistNotifier.value.add(user);
    userlistNotifier.notifyListeners();
  });

}
