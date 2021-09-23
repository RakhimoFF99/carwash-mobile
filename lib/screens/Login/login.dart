import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  var texts = ["Login","Registratsiya"];
  int textIndex = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(220),
            child: AppBar(
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
                        child: ElevatedButton(onPressed: () {}, child: Text("Kirish",style: TextStyle(
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
                       child: ElevatedButton(onPressed: () {}, child: Text("Ro'yhatdan o'tish",style: TextStyle(
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
}
