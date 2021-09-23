import 'package:carwash/Constants.dart';
import 'package:carwash/screens/Login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        key: _key,
        drawer: Drawer(

        ),
        backgroundColor: Color(0xffF4F3F4),

        body: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20,horizontal: 25),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(55),
                    bottomRight: Radius.circular(55),

                ),
                color: Color(0xff2C6DD5)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                          child: Icon(Icons.menu,color: Colors.white,size: 30),
                          onTap: () {
                        _key.currentState!.openDrawer();
                          },
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage('https://g.foolcdn.com/image/?url=https%3A//g.foolcdn.com/editorial/images/436992/man-smiling_gettyimages-544358212.jpg&w=2000&op=resize')
                          )
                        ),
                      )
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text("Joylashuvni tanlang",style: TextStyle(
                      color: Colors.white,
                      fontSize: size.width/22,
                      fontWeight: FontWeight.w700
                    ),),
                  ),

                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:20 ),
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          width: 250,
                          child: TextField(
                            cursorHeight: double.infinity,
                            style: TextStyle(color: Colors.blue),
                            decoration: InputDecoration(

                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                color: Colors.blue
                              ),
                              hintText: "Xorazm , Uzbekistan",
                              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                              prefixIcon: Icon(Icons.location_on_outlined),
                            ),
                          ),
                        ),
                      ),
                      Icon(Icons.tune,color: Colors.white,size: 30,)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
              width: 370,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),

            )

          ],
        )



      ),
    );
  }
  filterDialogScreen() {

  }
}
