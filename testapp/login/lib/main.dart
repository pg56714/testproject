import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login/database/manager/login_manager.dart';
import 'package:login/student.dart';
import 'package:login/database/database_helper.dart';
import 'database/data/login.dart';

void main() => runApp(
  MyApp(),
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 640),
        builder: () {
          return MaterialApp(
            title: 'Flutter Demo',
            home: Login(),
          );
        });
  }
}

class Login extends StatelessWidget {
  //Login({Key? key}) : super(key: key);

  final TextEditingController accController = TextEditingController();
  final TextEditingController pwdController = TextEditingController();

  var dbHelper = DatabaseHelper();

  Future setSP(User user) async {
    DatabaseHelper sp = DatabaseHelper();

    sp.getLogin("account", user.account);
    sp.getLogin("password", user.password);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /*
            Image.asset(
              'assets/images/sign_in.png',
              height: 250.h,
              fit: BoxFit.cover,
            ),
             */
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.all(18.0.w),
              child: Column(
                children: [
                  Text(
                    'Welcome Back',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  TextFormField(
                    controller: accController,
                    decoration: InputDecoration(
                      hintText: 'Account',
                      label: Text(
                        'Account',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),

                  ),
                  SizedBox(height: 10.h),
                  TextFormField(
                    controller: pwdController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      label: Text(
                        'Password',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 50.h),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 40.h,
                    child: ElevatedButton(
                      onPressed: () async{

                          String acc = accController.text;
                          String pwd = pwdController.text;
                          User? test = await dbHelper.getLogin(acc, pwd);
                          if (acc.isEmpty) {
                            debugPrint('Please Enter User ID');
                          } else if (pwd.isEmpty) {
                            debugPrint('Please Enter Password');
                          } else {
                            await dbHelper.getLogin(acc, pwd).then((userData) async {
                              if (userData != null) {
                                setSP(userData).whenComplete(() {
                                  debugPrint('成功');
                                  debugPrint(test.toString());
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Student(strVal: accController.text, strVal1: pwdController.text)
                                      )
                                  );
                                });
                                //debugPrint('成功');
                              } else {
                                User? test = await dbHelper.getLogin(acc, pwd);
                                debugPrint(test.toString());
                                debugPrint('Error: User Not Found');
                              }
                            }).catchError((error) {
                              debugPrint(error);
                              debugPrint('Error: Login Fail');
                            });
                          }
                      },

                      //onPressed: () {},
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Or',
                        style: TextStyle(fontSize: 14.sp, color: Colors.grey),
                      ),
                      SizedBox(width: 10.w),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUp(),
                            ),
                          );
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.amber, // background
                          onPrimary: Colors.black, // foreground
                          //elevation: 10, //陰影
                        ),
                        onPressed: (){
                          LoginManager.instance.insert();
                          //debugPrint('點擊新增');
                        },
                        //icon: Icon(Icons.send),
                        child: Text('新增', style: TextStyle(fontSize: 20),),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.amber, // background
                          onPrimary: Colors.black, // foreground
                          //elevation: 10, //陰影
                        ),
                        onPressed: (){
                          LoginManager.instance.query();
                          //debugPrint('點擊新增');
                        },
                        //icon: Icon(Icons.send),
                        child: Text('查詢', style: TextStyle(fontSize: 20),),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /*
            Image.asset(
              'assets/images/sign_up.png',
              height: 250.h,
              fit: BoxFit.contain,
            ),
             */
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.all(18.0.w),
              child: Column(
                children: [
                  Text(
                    "Let's Get Started",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Username',
                      label: Text(
                        'Username',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      label: Text(
                        'Email',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      label: Text(
                        'Password',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      label: Text(
                        'Confirm Password',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 40.h,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Create account',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Or",
                        style: TextStyle(fontSize: 14.sp, color: Colors.grey),
                      ),
                      SizedBox(width: 10.h),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login(),
                            ),
                          );
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}