import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AdminSignUpPage extends StatefulWidget {
  const AdminSignUpPage({super.key});

  @override
  State<StatefulWidget> createState() => _AdminSignUpPage();
}

class _AdminSignUpPage extends State<AdminSignUpPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1.0),
        resizeToAvoidBottomInset: false,
        body: Container(
            height: size.height,
            width: size.width,
            child: Stack(alignment: Alignment.center, children: [
              Positioned(
                top: 0,
                right: 0,
                child: SvgPicture.asset(
                  'images/sign_up_top.svg',
                  // color: Colors.blue,
                  width: size.width / 3,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: SvgPicture.asset(
                  'images/sign_up_bottom.svg',
                  // color: Colors.blue,
                  width: size.width / 4,
                ),
              ),
              Column(
                children: [
                  Expanded(
                    flex: 7,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 5.w, bottom: 20.w),
                            child: Text(
                              "Create an account",
                              style: TextStyle(
                                  fontSize: 20.w,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(189, 10, 78, 1.0)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 40.w, right: 40.w),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(243, 102, 149, 0.2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.w))),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: 20.w,
                                    bottom: 10.w,
                                    right: 10.w,
                                    left: 10.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      decoration: const BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Color.fromRGBO(
                                                      229, 3, 84, 1.0)))),
                                      child: Row(
                                        children: [
                                          Expanded(
                                              flex: 2,
                                              child: Icon(Icons.email_outlined,
                                                  color: Colors.grey[700])),
                                          Expanded(
                                            flex: 6,
                                            child: TextField(
                                              controller: emailController,
                                              style: TextStyle(fontSize: 15.w),
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: "Email",
                                                  hintStyle: TextStyle(
                                                      color: Colors.grey[500])),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10.w),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    color: Color.fromRGBO(
                                                        229, 3, 84, 1.0)))),
                                        child: Row(
                                          children: [
                                            Expanded(
                                                flex: 2,
                                                child: Icon(Icons.person,
                                                    color: Colors.grey[700])),
                                            Expanded(
                                              flex: 6,
                                              child: TextField(
                                                style:
                                                    TextStyle(fontSize: 15.w),
                                                controller: passwordController,
                                                obscureText: true,
                                                decoration: InputDecoration(
                                                    border: InputBorder.none,
                                                    hintText: "Username",
                                                    hintStyle: TextStyle(
                                                        color:
                                                            Colors.grey[500])),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10.w),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    color: Color.fromRGBO(
                                                        229, 3, 84, 1.0)))),
                                        child: Row(
                                          children: [
                                            Expanded(
                                                flex: 2,
                                                child: Icon(Icons.key,
                                                    color: Colors.grey[700])),
                                            Expanded(
                                              flex: 6,
                                              child: TextField(
                                                style:
                                                    TextStyle(fontSize: 15.w),
                                                controller: passwordController,
                                                obscureText: true,
                                                decoration: InputDecoration(
                                                    border: InputBorder.none,
                                                    hintText: "Password",
                                                    hintStyle: TextStyle(
                                                        color:
                                                            Colors.grey[500])),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10.w),
                                      child: Container(
                                        child: Row(
                                          children: [
                                            Expanded(
                                                flex: 2,
                                                child: Icon(Icons.key,
                                                    color: Colors.grey[700])),
                                            Expanded(
                                              flex: 6,
                                              child: TextField(
                                                style:
                                                    TextStyle(fontSize: 15.w),
                                                controller: passwordController,
                                                obscureText: true,
                                                decoration: InputDecoration(
                                                    border: InputBorder.none,
                                                    hintText:
                                                        "Confirm Password",
                                                    hintStyle: TextStyle(
                                                        color:
                                                            Colors.grey[500])),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 40.w,
                                right: 40.w,
                                top: 20.w,
                                bottom: 20.w),
                            child: Center(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor:
                                        Color.fromRGBO(206, 9, 80, 1.0),
                                    fixedSize: Size.fromWidth(
                                        MediaQuery.of(context).size.width),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.w)))),
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(top: 13.w, bottom: 13.w),
                                  child: Text("Register",
                                      style: TextStyle(
                                          fontSize: 20.w, color: Colors.white)),
                                ),
                                onPressed: () {
                                  if (emailController.text.trim() ==
                                          'admin@gmail.com' &&
                                      passwordController.text.trim() ==
                                          'password') {
                                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>const AdminAddContacts()));
                                    Fluttertoast.showToast(
                                        msg: "Login success",
                                        toastLength: Toast.LENGTH_SHORT);
                                  } else if (emailController.text.trim() !=
                                          'admin@gmail.com' &&
                                      passwordController.text.trim() !=
                                          'password') {
                                    Fluttertoast.showToast(
                                        msg: "Incorrect credentials",
                                        toastLength: Toast.LENGTH_SHORT);
                                  } else if (passwordController.text.trim() !=
                                      'password') {
                                    Fluttertoast.showToast(
                                        msg: "Incorrect password",
                                        toastLength: Toast.LENGTH_SHORT);
                                  } else if (emailController.text.trim() !=
                                      'admin@gmail.com') {
                                    Fluttertoast.showToast(
                                        msg: "Incorrect email",
                                        toastLength: Toast.LENGTH_SHORT);
                                  }
                                },
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Already have an account ?",
                                  style: TextStyle(fontSize: 15.w)),
                              TextButton(
                                  onPressed: () {},
                                  child: Text("Sign In",
                                      style: TextStyle(
                                          fontSize: 15.w,
                                          color: Color.fromRGBO(
                                              245, 17, 102, 1.0)))),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 30.w),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text("Abi creations",
                            style: TextStyle(
                                fontSize: 13.w, color: Colors.black54)),
                      ),
                    ),
                  )
                ],
              ),
            ])));
  }
}
