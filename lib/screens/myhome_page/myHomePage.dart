import 'package:carwash/Constants.dart';
import 'package:carwash/screens/detail_car_wash_page/detail_page.dart';
import 'package:carwash/screens/login_page//login.dart';
import 'package:carwash/screens/myhome_page/controller.dart';
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
  HomeController homeController = Get.put(HomeController());


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    return SafeArea(
        child: Scaffold(
          key: _key,
          drawer: customDrawer(),
          body: Container(
            height: size.height,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xff491F8D), Color(0xff3AC7FB)])),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              child:
                              Icon(Icons.menu, color: Colors.white, size: 30),
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
                                      image: NetworkImage(
                                          'https://g.foolcdn.com/image/?url=https%3A//g.foolcdn.com/editorial/images/436992/man-smiling_gettyimages-544358212.jpg&w=2000&op=resize'))),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Text(
                            "Avto yuvish shahobchasi",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: size.width / 23,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10),
                              child: Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                ),
                                width: 250,
                                child: TextField(
                                  onChanged: (value) => getByLetterWash(value),
                                  style: TextStyle(color: Colors.blue),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(color: Colors.blue),
                                    hintText: "Qidirish ...",
                                    contentPadding:
                                    EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                                    prefixIcon: Icon(
                                        Icons.local_car_wash_outlined),
                                  ),
                                ),
                              ),
                            ),
                            IconButton(
                                onPressed: () {
                                  createConfirmDialog(context);
                                },
                                icon: Icon(
                                  Icons.tune,
                                  color: Colors.white,
                                  size: 30,
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        GetX<HomeController>(
                          init: HomeController(),
                          builder: (controller) {
                            return ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.vertical,
                                itemCount: controller.wash.length,
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      Container(
                                        width: 370,
                                        height: 100,
                                        child: InkWell(
                                          splashColor: Colors.black,
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DetailPage(
                                                          index: index,)));
                                          },
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment
                                                .start,
                                            children: [
                                              Hero(
                                                transitionOnUserGestures: true,
                                                tag: index.toString(),
                                                child: Container(
                                                    width: 130,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius
                                                          .only(
                                                          topLeft: Radius
                                                              .circular(15),
                                                          bottomLeft: Radius
                                                              .circular(15)),
                                                      image: DecorationImage(
                                                        image: NetworkImage(
                                                            'https://memegenerator.net/img/images/12269425.jpg'),
                                                        fit: BoxFit.fill,
                                                      ),
                                                    )),
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(height: 10,),
                                                  Text(
                                                      controller.wash[index]['name'],
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight: FontWeight.w500,
                                                    )),
                                                  SizedBox(height: 5,),
                                                  Text("Manzil : ${controller.wash[index]['address']}",
                                                    style:TextStyle(
                                                      fontSize: 12,
                                                    ) ),
                                                  Text("Ish vaqti : ${controller.wash[index]['workFrom']} - ${controller.wash[index]['workTo']}",style: TextStyle(
                                                    fontSize: 11
                                                  ),),
                                                  Spacer(),
                                                    Container(
                                                      alignment: Alignment.bottomRight,
                                                      child: Text('sdsdsd'),
                                                    )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.blueGrey,
                                              blurRadius: 1.2,
                                              // soften the shadow
                                              spreadRadius: 0.2,
                                              //extend the shadow
                                              offset: Offset(
                                                0.3,
                                                // Move to right 10  horizontally
                                                0.3, // Move to bottom 5 Vertically
                                              ),
                                            )
                                          ],
                                          borderRadius: BorderRadius.circular(
                                              16),
                                        ),
                                      ),
                                      SizedBox(height: 15,)

                                    ],
                                  );
                                });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  filterDialogScreen() {}

  customDrawer() {
    return Drawer(
      child: GetX<HomeController>(

        builder: (controller) {
          return Column(
            children: [
              Container(
                height: 170,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xff491F8D), Color(0xff3AC7FB)])),
                child: Container(
                  padding: EdgeInsets.only(left: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  'https://im0-tub-com.yandex.net/i?id=786fae8edec9a00cb5e9b017f15cd92e&n=13',
                                ))),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            controller.user['data']['name'],
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Редактировать",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.person_outline,
                            size: 25,
                            color: Colors.blueGrey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Мой аккаунт",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.blueGrey),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star_border_outlined,
                            size: 25,
                            color: Colors.blueGrey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Мои заказы",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.blueGrey),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.announcement_outlined,
                            size: 25,
                            color: Colors.blueGrey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "О нас",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.blueGrey),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.settings_outlined,
                            size: 25,
                            color: Colors.blueGrey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Настройка",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.blueGrey),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      InkWell(
                        onTap: () => Get.off(() => Login()),
                        child: Row(
                          children: [
                            Icon(
                              Icons.exit_to_app_outlined,
                              size: 25,
                              color: Colors.blueGrey,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Выйти",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blueGrey),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  )),
            ],
          );
        },
      ),
    );
  }
  getByLetterWash (value) {
    if(value.length > 0) {
      homeController.findWashByLetter(value);
    }
    else {
      homeController.getAllWash();
    }

  }
  createConfirmDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              "Avto yuvish shahobchalarini qidirish",
              style: TextStyle(color: Colors.blueGrey),
            ),
            content: Container(
              height: 250,
              child: Column(
                children: [
                  Text("Elyor"),
                  TextField(
                    keyboardType: TextInputType.number,
                  ),
                ],
              ),
            ),
            actions: [
              Container(
                height: 38,
                width: 80,
                color: Colors.red,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Yopish",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                height: 38,
                width: 90,
                color: Colors.blue,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Qidirish",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              )
            ],
          );
        });
  }
}
