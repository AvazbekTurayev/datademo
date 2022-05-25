import 'package:datademo/model/user_model.dart';
import 'package:datademo/services/db_services.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final usernameController = TextEditingController();
  // final passwordController = TextEditingController();
  //
  //   void _doLogin(){
  //     String username = usernameController.text.toString().trim();
  //     String password = passwordController.text.toString().trim();
  //
  //     var user = new User(username: username, password: password);
  //
  //     HiveDB().storeUser(user);
  //
  //     var user2 = HiveDB().loadUser();
  //
  //     print(user2.username);
  //     print(user2.password);
  //      }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Salom",style: TextStyle(fontSize: 25,color: Colors.deepOrange,fontWeight: FontWeight.bold),),
      )
    );
  }
}
