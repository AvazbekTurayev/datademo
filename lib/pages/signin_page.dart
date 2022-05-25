import 'package:datademo/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
class SigninPage extends StatefulWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void doSignin()async{
  String username = usernameController.text.toString().trim();
  String password = passwordController.text.toString().trim();
  var box = Hive.box('pdponline');
  box.put("username", username);
  box.put("password", password);
  String id = box.get("username");
  String pw = box.get("password");
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF150C30),
      body: Container(
        padding: EdgeInsets.only(left: 20,right: 20,top: 180),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage("assets/images/ic_image.jpg"),
                  fit: BoxFit.cover,
                )
              ),
            ),
            SizedBox(height: 20,),
            Text("Welcome Back!",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
            SizedBox(height: 10,),
            Text("Sign in to continue",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),),
            SizedBox(height: 30,),
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                hintText: "User Name",
                hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.person_outline, color: Colors.grey,),
                border: InputBorder.none,
                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                  disabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey))
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                hintText: "Password",
                hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.lock_outline, color: Colors.grey,),
                border: InputBorder.none,
                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                  disabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey))
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              child: Text("Forgot Password?",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey[700]),),
            ),
            SizedBox(height: 40,),
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.blue,
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.blueAccent.shade700,
                      Colors.blue.shade800,
                      Colors.lightBlueAccent
                    ]),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: (){},
                icon: Icon(Icons.arrow_forward,size: 35,color: Colors.white,),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?",style: TextStyle(fontSize: 15,color: Colors.grey[700],fontWeight: FontWeight.bold),),
                SizedBox(width: 3,),
                TextButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupPage()),
                  );
                },
                    child: Text("SIGN UP",style: TextStyle(fontSize: 14,color: Colors.blue,fontWeight: FontWeight.bold),)
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}
