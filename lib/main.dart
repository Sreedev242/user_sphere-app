import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:user_sphere/Application/bloc/user_bloc.dart';
import 'package:user_sphere/Presentation/LoginScreen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_sphere/Presentation/UserListview.dart';
import 'package:user_sphere/Presentation/splashScreen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {

  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isloggedin=false;
@override
  void initState() {
    CheckLogin();
    super.initState();
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'User app',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Color.fromARGB(255, 58, 131, 183)),
          useMaterial3: true,
        ),
        home:isloggedin?UserListviewScreen(): SplashScreen(),
      ),
    );
  }

  Future<void> CheckLogin() async {
    final _loggedin = await SharedPreferences.getInstance();
    final LoggedIn = _loggedin.getBool('LoggedIn');
    if (LoggedIn==false || LoggedIn==null) {
      setState(() {
        isloggedin = false;
      });
      
    }else{
      setState(() {
        isloggedin=true;
      });
    }
  }
}
