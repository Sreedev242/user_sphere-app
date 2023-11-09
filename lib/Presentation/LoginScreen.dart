import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:user_sphere/Core/constatnts.dart';
import 'package:user_sphere/Presentation/UserListview.dart';
import 'package:user_sphere/Widgets/SnackbarWidget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
    final _Formkey = GlobalKey<FormState>();

   final Loggingkey = 'LoggedIn';
   bool _isLoading=false;
  @override
  Widget build(BuildContext context) {

    final ctrlUsername = TextEditingController();
    final ctrlPassword = TextEditingController();
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final isKeyboard=MediaQuery.of(context).viewInsets.bottom!=0;
    return Scaffold(
        body:_isLoading?Center(child: CircularProgressIndicator(color: Constants.kAppColor,),)
        :
         SafeArea(
          child: Form(
            key: _Formkey,
            child: SingleChildScrollView(
              // reverse: true,
              // physics: BouncingScrollPhysics(),
              child: Column(
                  children: [
             if(!isKeyboard) LohinImage(height: height),
              SizedBox(
                height: height * 1 / 22,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  
                  controller: ctrlUsername,
                  decoration: InputDecoration(
                      labelText: 'Username',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(38))),
                  validator:(value) {
                     if (value == null || value.isEmpty) {
                        return "Field can\'t be empty";
                      }  else {
                        return null;
                      }
                  },        
                ),
              ),
              SizedBox(height: 2),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  right: 8,
                ),
                child: TextFormField(
                  controller: ctrlPassword,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(38))),
                  validator: (value) {
                     if (value == null || value.isEmpty) {
                        return "Field can\'t be empty";
                      } else {
                        return null;
                      }
                  },
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: width * .8,
                child: ElevatedButton(
                  onPressed: () async{ 
                    // Implementing login
                     if (_Formkey.currentState!.validate()){
            
                      setState(() {
                              _isLoading=true;
                            });
                final _loggedin =
                                await SharedPreferences.getInstance();
                           await _loggedin.setBool(Loggingkey, true);
                           Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) {
                             return UserListviewScreen();
                           },));
                     }else{
                                
                               
                                setState(() {
                                  _isLoading=false;
                                });
                              }
            
                }, child: Text('Login')),
              )
                  ],
                ),
            ),
          ),
        ));
  }
}

class LohinImage extends StatelessWidget {
  const LohinImage({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 1 / 2,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/background2.jpg'),
        ),
      ),
    );
  }
}
