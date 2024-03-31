import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:login_ui_test/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (_, child) {
        return MaterialApp(
          home:  UserHomePage(),
        );
      }
    );
  }
}
class AdminLoginPage extends StatefulWidget {
  const AdminLoginPage({super.key});

  @override
  State<StatefulWidget> createState() => _AdminLoginPage();
}

class _AdminLoginPage extends State<AdminLoginPage> {
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1.0),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex:3,
            child: Padding(
              padding: EdgeInsets.only(left:30.w,right:30.w,top:70.h),
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                child: Center(child: SvgPicture.asset('images/mother.svg',fit: BoxFit.contain)),
              ),
            ),
          ),
          Expanded(
            flex:5,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(padding: EdgeInsets.only(top:5.w,bottom: 20.w),
                    child: Text("Sign In",style: TextStyle(fontSize: 20.w,fontWeight: FontWeight.bold,color: Color.fromRGBO(
                        189, 10, 78, 1.0)),),),
                  Padding(
                    padding: EdgeInsets.only(left: 40.w, right: 40.w),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(243, 102, 149, 0.2),
                          borderRadius: BorderRadius.all(Radius.circular(10.w))),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 20.w, bottom: 10.w, right: 10.w, left: 10.w),
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
                                  Expanded(flex:2,child: Icon(Icons.person,color: Colors.grey[700])),
                                  Expanded(
                                    flex:6,
                                    child: TextField(
                                      controller: emailController,
                                      style: TextStyle(fontSize: 15.w),
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Username",
                                          hintStyle: TextStyle(color: Colors.grey[500])),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top:10.w),
                              child: Container(
                                child: Row(
                                  children: [
                                    Expanded(flex:2,child: Icon(Icons.key,color: Colors.grey[700])),
                                    Expanded(
                                      flex:6,
                                      child: TextField(
                                        style: TextStyle(fontSize: 15.w),
                                        controller: passwordController,
                                        obscureText: true,
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Password",
                                            hintStyle: TextStyle(color: Colors.grey[500])),
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
                    padding: EdgeInsets.only(left:40.w,right:40.w,top:20.w,bottom: 20.w),
                    child: Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Color.fromRGBO(248, 79, 140, 1.0),
                            fixedSize:Size.fromWidth(MediaQuery.of(context).size.width),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.w)))
                        ),
                        child:  Padding(
                          padding: EdgeInsets.only(top:13.w,bottom: 13.w),
                          child: Text("Sign in",style: TextStyle(fontSize: 20.w,color: Colors.white)),
                        ),
                        onPressed: (){
                          if(emailController.text.trim()=='admin@gmail.com' && passwordController.text.trim()=='password'){
                            //Navigator.push(context, MaterialPageRoute(builder: (context)=>const AdminAddContacts()));
                            Fluttertoast.showToast(msg: "Login success",toastLength: Toast.LENGTH_SHORT);
                          }else if(emailController.text.trim()!='admin@gmail.com' && passwordController.text.trim()!='password'){
                            Fluttertoast.showToast(msg: "Incorrect credentials",toastLength: Toast.LENGTH_SHORT);
                          }else if(passwordController.text.trim()!='password'){
                            Fluttertoast.showToast(msg: "Incorrect password",toastLength: Toast.LENGTH_SHORT);
                          }else if(emailController.text.trim()!='admin@gmail.com'){
                            Fluttertoast.showToast(msg: "Incorrect email",toastLength: Toast.LENGTH_SHORT);
                          }

                        },
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account ?",style: TextStyle(fontSize: 15.w)),
                      TextButton(onPressed: (){},child: Text("Sign Up",style: TextStyle(fontSize: 15.w,color: Color.fromRGBO(
                          245, 17, 102, 1.0)))),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 30.w),
            child: Align(alignment: Alignment.bottomCenter,child: Text("Abi creations",style: TextStyle(fontSize: 13.w,color: Colors.black54)),),
          )
        ],
      ),
    );
  }
}
