import 'package:datademo/pages/signin_page.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();

  void doSignin()async{
    String username = usernameController.text.toString().trim();
    String password = passwordController.text.toString().trim();
    String mail = emailController.text.toString().trim();
    String phoneNumber = phoneNumberController.text.toString().trim();
    var box = Hive.box('pdponline');
    box.put("username", username);
    box.put("password", password);
    box.put("mail", mail);
    box.put("phoneNumber", phoneNumber);
    String id = box.get("username");
    String pw = box.get("password");
    String ml = box.get("mail");
    String ph = box.get("phoneNumber");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF150C30),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 20,right: 20,top: 180),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //SizedBox(height: 20,),
                Text("Create",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
                SizedBox(height: 10,),
                Text("Account",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
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
                  controller: emailController,
                  decoration: InputDecoration(
                      hintText: "E-Mail",
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(Icons.mail_outline_outlined, color: Colors.grey,),
                      border: InputBorder.none,
                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                      disabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey))
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: phoneNumberController,
                  decoration: InputDecoration(
                      hintText: "Phone Number",
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(Icons.phone, color: Colors.grey,),
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
                    Text("Already have an account?",style: TextStyle(fontSize: 15,color: Colors.grey[700],fontWeight: FontWeight.bold),),
                    SizedBox(width: 3,),
                    TextButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SigninPage()),
                      );
                    },
                        child: Text("SIGN IN",style: TextStyle(fontSize: 14,color: Colors.blue,fontWeight: FontWeight.bold),)
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
    );
  }
}
