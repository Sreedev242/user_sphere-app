import 'package:flutter/material.dart';
import 'package:user_sphere/Core/constatnts.dart';

class UserDetailsScreen extends StatelessWidget {  
  final Map<String, dynamic> userdata;
  const UserDetailsScreen({super.key, required this.userdata});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
       appBar: AppBar(
        
        actionsIconTheme:IconThemeData(color: Colors.white),
        backgroundColor: Constants.kAppColor,
        centerTitle: true,
      title: Text('User ${userdata['id']}',style: TextStyle(
        color: Colors.white,
        fontSize: 25,fontWeight: FontWeight.bold),),
      ),
      body: SafeArea(child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            
            children: [
              Center(child: Text(
                textAlign:TextAlign.center,
                'UserID  : ${userdata['userId']}',style: TextStyle(fontSize: 22),)),
              SizedBox(height: 4,),
              Text(
                textAlign:TextAlign.center,
                
                '${userdata['title']}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              SizedBox(height: 4,),
              Text(
                textAlign:TextAlign.center,
                
                '${userdata['body']}',style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),)
            ],
          ),
        ),
      )),);
  }
}