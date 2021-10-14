import 'dart:convert';


import 'package:carwash/Constants.dart';
import 'package:carwash/screens/myhome_page/myHomePage.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  var texts = ["Login","Registratsiya"];
  TextEditingController _phone = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _phoneRegister = TextEditingController();
  TextEditingController _passwordRegister = TextEditingController();
  TextEditingController _name = TextEditingController();
  int textIndex = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
        child: Container(
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(220),
              child: AppBar(
                flexibleSpace: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xff490F8D),Color(0xff3AC7FB)]
                      )
                  ),
                ),
                toolbarHeight: 200,
                elevation: 0,
                title: Center(
                  child: Text(texts[textIndex],style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 35
                  ),),
                ),

                titleSpacing: 30,
                bottom: TabBar(
                  onTap: (index) {
                      setState(() {
                        textIndex = index;
                      });
                  },
                  tabs: [
                    Tab(
                      child: Text("Login",style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18
                    ),),),
                    Tab(child: Text("Registratsiya",style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700
                    ),),)
                  ],
                ),

              ),
              ),
            body: TabBarView(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                        Container(

                          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 35),
                          child: Column(
                            children: [
                              SizedBox(height: 30,),
                              Container(
                                height: 45,
                                child: TextField(
                                  controller: _phone,
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Colors.teal, width: 2.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Colors.blue, width: 2.0),

                                  ),
                                  prefixIcon: Icon(Icons.call),
                                  labelText: "Telefon"
                                ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                height: 45,
                                child: TextField(
                                  controller: _password,
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide: const BorderSide(color: Colors.teal, width: 2.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(color: Colors.blue, width: 2.0),

                                      ),
                                      prefixIcon: Icon(Icons.lock),
                                      labelText: "Parol"
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                      Container(
                          width: 270,
                          child: ElevatedButton(onPressed: () {

                           _phone.text.length > 0 && _password.text.length > 0 ? login():EasyLoading.showError("Malumotlarni to'liq kiriting");

                          }, child: Text("Kirish",style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 15
                          ),))
                      )
                    ],
                  ),
                ),
               SingleChildScrollView(
                 child: Column(
                   children: [
                     Container(
                       padding: EdgeInsets.symmetric(vertical: 20,horizontal: 35),
                       child: Column(
                         children: [
                           SizedBox(height: 30,),
                           Container(
                             height: 45,
                             child: TextField(
                               controller: _name,
                               decoration: InputDecoration(
                                   border: OutlineInputBorder(
                                     borderSide: const BorderSide(color: Colors.teal, width: 2.0),
                                   ),
                                   focusedBorder: OutlineInputBorder(
                                     borderSide: const BorderSide(color: Colors.blue, width: 2.0),

                                   ),
                                   prefixIcon: Icon(Icons.person),
                                   labelText: "Ism"
                               ),
                             ),
                           ),
                           SizedBox(height: 10,),
                           Container(
                             height: 45,
                             child: TextField(
                               keyboardType: TextInputType.phone,
                               controller: _phoneRegister,
                               decoration: InputDecoration(
                                   border: OutlineInputBorder(
                                     borderSide: const BorderSide(color: Colors.teal, width: 2.0),
                                   ),
                                   focusedBorder: OutlineInputBorder(
                                     borderSide: const BorderSide(color: Colors.blue, width: 2.0),

                                   ),
                                   prefixIcon: Icon(Icons.call),
                                   labelText: "Telefon"
                               ),
                             ),
                           ),
                           SizedBox(height: 10,),
                           Container(
                             height: 45,
                             child: TextField(
                               obscureText: true,
                               controller: _passwordRegister,
                               decoration: InputDecoration(
                                   border: OutlineInputBorder(
                                     borderSide: const BorderSide(color: Colors.teal, width: 2.0),
                                   ),
                                   focusedBorder: OutlineInputBorder(
                                     borderSide: const BorderSide(color: Colors.blue, width: 2.0),

                                   ),
                                   prefixIcon: Icon(Icons.lock),
                                   labelText: "Parol"
                               ),
                             ),
                           )
                         ],
                       ),
                     ),

                     Container(
                         width: 270,
                         child: ElevatedButton(onPressed: () {
                         _passwordRegister.text.length > 0 && _name.text.length > 0 && _phone.text.length > 0 ? register():EasyLoading.showError("Malumotlarni to'liq kiriting");
                         }, child: Text("Ro'yhatdan o'tish",style: TextStyle(
                           fontSize: 15,
                           fontWeight: FontWeight.w700
                         ),))
                     )
                   ],
                 ),
               )

              ],
            ),
            ),
        ),



    );



  }
  Future login () async{

    EasyLoading.show();
   Map user = {
    "phone":_phone.text,
    "password":_password.text
   };
   print(user);
   try {
     http.Response response = await http.post(Uri.parse("$Url/login"),body: user);
     var data = jsonDecode(response.body);
        print(data);
     if(data["success"]) {
       EasyLoading.showSuccess("Kirish muffaqqiyatli bo'ldi");
       Get.off(() => MyHomePage());
     }
     else {
       EasyLoading.showError(data['message'].toString());
     }

   }
   catch(e) {
     EasyLoading.showError(e.toString());
   }


  }
  Future register () async{
    Map user = {
      "phone":_phoneRegister.text,
      "password":_passwordRegister.text,
      "name":_name.text
    };
    try {
      http.Response  response = await http.post(Uri.parse("$Url/register"),body: user);
      var data = jsonDecode(response.body);
      if(data["success"]) {
        EasyLoading.showSuccess("Foydalanuvchi mufaqqiyatli ro'yhatdan o'tdi");
        _name.text = "";
        _passwordRegister.text = "";
        _phoneRegister.text = "";
      }
      else {
        EasyLoading.showError(data['message'].toString());
      }
    }
    catch(e) {
      EasyLoading.showError(e.toString());
    }

  }
}
