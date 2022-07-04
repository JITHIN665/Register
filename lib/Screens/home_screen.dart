import 'package:demo_login/db/functions/db_functions.dart';
import 'package:demo_login/model/data_model.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  static const String id = 'home_Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff482D8A),
        leading: Icon(Icons.home),
        title: Text(
          "TechFriar",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ValueListenableBuilder(
          valueListenable: userlistNotifier,
          builder: (BuildContext ctx, List<UserModel> userList, Widget? child) {
            return ListView.separated(
              itemBuilder: (ctx, index) {
                final data = userList[index];
                return ListTile(
                  title: Text(data.name),
                  subtitle: Text(data.email),
                  trailing: IconButton(
                    onPressed: () {
                      // if (data.id != null) {
                      //   deleteUser(data.id);
                      // } else {
                      //   print('User id  is null.Unable to delete');
                      // }
                    },
                    icon: Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                  ),
                );
              },
              separatorBuilder: (ctx, index) {
                return const Divider();
              },
              itemCount: userList.length,
            );
          },
        ),
      ),
    );
  }
}
