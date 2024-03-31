import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';


class UserHomePage extends StatefulWidget {
  UserHomePage({Key? key,}) : super(key: key);

  @override
  State<UserHomePage> createState() => _UserHomePage();
}

class _UserHomePage extends State<UserHomePage> {
  late CarouselController controller;
  int currentIndex = 0;

  @override
  void initState() {
    controller = CarouselController();
    super.initState();
  }

  final List<Widget> imageAddress = [
    Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30.w)),
        color: Colors.purpleAccent,
      ),
      margin: EdgeInsets.only(left: 15.w),

      child: Center(
        child: Text("ad1",style:TextStyle(
            fontSize: 25.w
        )),
      ),
    ),
    Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30.w)),
        color: Colors.pinkAccent,
      ),
      margin: EdgeInsets.only(left: 15.w),

      child: Center(
        child: Text("ad2",style:TextStyle(
            fontSize: 25.w
        )),
      ),
    ),
    Container(
      margin: EdgeInsets.only(left: 15.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30.w)),
        color: Colors.pink,
      ),

      child: Center(
        child: Text("ad3",style:TextStyle(
            fontSize: 25.w
        )),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          // Return false to disable back button
          return false;
        },
        child:ScreenUtilInit(
          minTextAdapt: true,
          child: Scaffold(
              drawer: Drawer(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    const UserAccountsDrawerHeader(
                      decoration: BoxDecoration(color: const Color(0xff764abc)),
                      accountName: Text(
                        "Person Name",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      accountEmail: Text(
                        "person1@gmail.com",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      currentAccountPicture: FlutterLogo(),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.home,
                      ),
                      title: const Text('Page 1'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.person,
                      ),
                      title: const Text('Page 2'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
              appBar: AppBar(
                //automaticallyImplyLeading: false,
                title: Text("Abi creations",style: TextStyle(
                    color: Colors.pink
                )),
                toolbarHeight: 65.w,
                actions: [
                  Padding(
                    padding: EdgeInsets.only(right:20.w),
                    child: InkWell(
                      onTap: () {
                        /*
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>SelectUserPage()), (route) => false);

                       */
                      },
                      child: Container(
                        width: 40.w,
                        height: 40.w,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.pink,
                        ),
                        child: const Icon(
                          Icons.logout,
                          // color: Color.fromRGBO(9, 75, 75, 1.0),
                          color: Color.fromRGBO(253, 253, 253, 1.0),
                        ),
                      ),
                    ),
                  ),
                ],
                backgroundColor:Color.fromRGBO(255, 255, 255, 1.0) ,
              ),

              backgroundColor:Color.fromRGBO(236, 230, 230, 1.0) ,
              body: Container(
                width: MediaQuery.of(context).size.width,
                height:MediaQuery.of(context).size.height,
                child: Stack(
                  children: [
                    Positioned(
                      bottom:0,
                      left:0,
                      child: SvgPicture.asset("images/mother_blur.svg",),
                    ),
                    Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          child: Center(
                            child: CarouselSlider(
                              carouselController: controller,
                              items: imageAddress,
                              options: CarouselOptions(
                                  height: MediaQuery.of(context).size.height / 4.h,
                                  autoPlay: true,
                                  autoPlayInterval: Duration(milliseconds: 1800),
                                  autoPlayAnimationDuration:
                                  const Duration(milliseconds: 500)),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Center(
                          child: Container(
                            padding: EdgeInsets.fromLTRB(30.w, 10.w, 25.w, 0),
                            //color: Colors.blue,
                            //const Color.fromRGBO(33, 160, 164, 1.0),
                            height: MediaQuery.of(context).size.height -
                                (MediaQuery.of(context).size.height / 1.6.w),
                            child: GridView(
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount:2,
                                  childAspectRatio: MediaQuery.of(context).size.width < 700 ? (1.1):(1.5),
                                  mainAxisSpacing: 20.w,
                                  crossAxisSpacing: 20.w),
                              children: [
                                InkWell(
                                  onTap: () {
                                    /*
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>page()));

                                     */
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft,
                                          stops: [
                                            0.1.w,
                                            0.4.w,
                                            0.6.w,
                                            0.9.w,
                                          ],
                                          colors: const [
                                            Color.fromRGBO( 159, 3, 91, 1.0),
                                            Color.fromRGBO(229, 109, 176, 1.0),
                                            Color.fromRGBO(234, 116, 182, 1.0),
                                            Color.fromRGBO( 159, 3, 91, 1.0),
                                          ],
                                        ),
                                        //  color: Color.fromRGBO(188, 197, 197, 1.0),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20.w),
                                            topLeft: Radius.circular(20.w),
                                            bottomRight: Radius.circular(20.w),
                                            bottomLeft: Radius.circular(20.w))),
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Column(
                                      children: [
                                        Padding(
                                            padding:
                                            EdgeInsets.only(top: 20.w, bottom: 10.w),
                                            child: SvgPicture.asset("images/bot.svg",color:Colors.white,height: 45.w,)),
                                        Center(
                                            child: Text(
                                              "Page 1",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold, fontSize: 15.w,color: Colors.white),
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    /*
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>page()));

                                     */
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft,
                                          stops: [
                                            0.1.w,
                                            0.4.w,
                                            0.6.w,
                                            0.9.w,
                                          ],
                                          colors: const [
                                            Color.fromRGBO( 159, 3, 91, 1.0),
                                            Color.fromRGBO(229, 109, 176, 1.0),
                                            Color.fromRGBO(234, 116, 182, 1.0),
                                            Color.fromRGBO( 159, 3, 91, 1.0),
                                          ],
                                        ),
                                        //color: Color.fromRGBO(188, 197, 197, 1.0),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20.w),
                                            topLeft: Radius.circular(20.w),
                                            bottomRight: Radius.circular(20.w),
                                            bottomLeft: Radius.circular(20.w))),
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Column(
                                      children: [
                                        Padding(
                                            padding:
                                            EdgeInsets.only(top: 20.w, bottom: 10.w),
                                            child: SvgPicture.asset("images/emotion.svg",color:Colors.white,height: 45.w,)),
                                        Center(
                                            child: Text(
                                              "Page 2",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold, fontSize: 15.w,color: Colors.white,),
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    /*
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>page()));

                                     */
                                  },
                                  child: Container(
                                      decoration: BoxDecoration(
                                        // color: Color.fromRGBO(188, 197, 197, 1.0),
                                          gradient: LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                            stops: [
                                              0.1.w,
                                              0.4.w,
                                              0.6.w,
                                              0.9.w,
                                            ],
                                            colors: const [
                                              Color.fromRGBO( 159, 3, 91, 1.0),
                                              Color.fromRGBO(229, 109, 176, 1.0),
                                              Color.fromRGBO(234, 116, 182, 1.0),
                                              Color.fromRGBO( 159, 3, 91, 1.0),
                                            ],
                                          ),
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(20.w),
                                              topLeft: Radius.circular(20.w),
                                              bottomRight: Radius.circular(20.w),
                                              bottomLeft: Radius.circular(20.w))),
                                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding:
                                            EdgeInsets.only(top: 20.w, bottom: 10.w),
                                            child: SvgPicture.asset("images/panic.svg",color:Colors.white,height: 45.w,),
                                          ),
                                          Center(
                                              child: Text(
                                                "Page 3",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15.w,color: Colors.white,),
                                              )),
                                        ],
                                      )),
                                ),
                                InkWell(
                                  onTap: () {
                                    /*
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>page()));

                                     */
                                  },
                                  child: Container(
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                            stops: [
                                              0.1.w,
                                              0.4.w,
                                              0.6.w,
                                              0.9.w,
                                            ],
                                            colors: const [
                                              Color.fromRGBO( 159, 3, 91, 1.0),
                                              Color.fromRGBO(229, 109, 176, 1.0),
                                              Color.fromRGBO(234, 116, 182, 1.0),
                                              Color.fromRGBO( 159, 3, 91, 1.0),
                                            ],
                                          ),
                                          //color: Color.fromRGBO(188, 197, 197, 1.0),
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(20.w),
                                              topLeft: Radius.circular(20.w),
                                              bottomRight: Radius.circular(20.w),
                                              bottomLeft: Radius.circular(20.w))),
                                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding:
                                            EdgeInsets.only(top: 20.w, bottom: 10.w),
                                            child: SvgPicture.asset("images/suggestion.svg",color:Colors.white,height: 45.w,),
                                          ),
                                          Center(
                                              child: Text(
                                                "page 4",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15.w,color: Colors.white,),
                                              )),
                                        ],
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(flex:1,child: Padding(
                        padding:  EdgeInsets.only(bottom:20.w),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text("Copyrights reserved"),
                        ),
                      ))
                    ],
                  ),]
                ),
              ),
            ),
          ),
        );
  }
}