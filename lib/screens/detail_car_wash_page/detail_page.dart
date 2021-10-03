import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(

          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: size.height,
                  ),

                     Hero(
                       transitionOnUserGestures: true,
                       tag: "photo",
                       child: Container(
                          height: size.height/2.5,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage("https://memegenerator.net/img/images/12269425.jpg"),
                              ),
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50))
                          ),

                        ),
                     ),
                  Positioned(
                      width: size.width/1.15,
                      top: size.height/3,
                      right: 0,
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blueGrey,
                                blurRadius: 40.2, // soften the shadow
                                spreadRadius: 0.1, //extend the shadow
                                offset: Offset(
                                  0.1, // Move to right 10  horizontally
                                  0.3, // Move to bottom 5 Vertically
                                ),
                              )
                            ],
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(50),bottomLeft: Radius.circular(50)),
                          color: Color(0xfff9f9f9)
                        ),

                  )),
                  Positioned(
                      left: 20,
                  top: 30,
                      child: IconButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back,size: 30,))),

                ],
              ),

            ],
          ),
        ),
    );
  }
}
