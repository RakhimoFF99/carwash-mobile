import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class DetailPage extends StatelessWidget {
  final int? index;
  DetailPage({this.index});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: size.height,
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: size.height/2,
                          ),
                          Container(
                            height: size.height/2,
                            child: SingleChildScrollView(
                              physics: BouncingScrollPhysics(),
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(child: Text('1'),),
                                      Container(child: Text('1'),),

                                    ],),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(child: Text('1'),),
                                      Container(child: Text('1'),),

                                    ],),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(child: Text('1'),),
                                      Container(child: Text('1'),),

                                    ],),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(child: Text('1'),),
                                      Container(child: Text('1'),),

                                    ],),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(child: Text('1'),),
                                      Container(child: Text('1'),),

                                    ],),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(child: Text('1'),),
                                      Container(child: Text('1'),),

                                    ],),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(child: Text('1'),),
                                      Container(child: Text('1'),),

                                    ],),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(child: Text('1'),),
                                      Container(child: Text('1'),),

                                    ],),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(child: Text('1'),),
                                      Container(child: Text('1'),),

                                    ],),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(child: Text('1'),),
                                      Container(child: Text('1'),),

                                    ],),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(child: Text('1'),),
                                      Container(child: Text('1'),),

                                    ],),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(child: Text('1'),),
                                      Container(child: Text('1'),),

                                    ],),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(child: Text('1'),),
                                      Container(child: Text('1'),),

                                    ],),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(child: Text('1'),),
                                      Container(child: Text('1'),),

                                    ],),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(child: Text('1'),),
                                      Container(child: Text('1'),),

                                    ],),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(child: Text('1'),),
                                      Container(child: Text('1'),),

                                    ],),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(child: Text('1'),),
                                      Container(child: Text('1'),),

                                    ],),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(child: Text('1'),),
                                      Container(child: Text('1'),),

                                    ],),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(child: Text('1'),),
                                      Container(child: Text('1'),),

                                    ],),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(child: Text('1'),),
                                      Container(child: Text('1'),),

                                    ],),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(child: Text('1'),),
                                      Container(child: Text('1'),),

                                    ],),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(child: Text('1'),),
                                      Container(child: Text('1'),),

                                    ],),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(child: Text('1'),),
                                      Container(child: Text('1'),),

                                    ],),
                                ],
                              ),
                            ),

                          )



                        ],
                      ),
                    ),
                       Hero(
                         transitionOnUserGestures: true,
                         tag: index.toString(),
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
                          child:Container(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Icon(Icons.map),
                                    SizedBox(height: 5,),
                                    Text("Map")
                                  ],
                                ),

                                Column()
                              ],
                            ),
                          ),
                          height: 80,
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
        ),
    );
  }
}
