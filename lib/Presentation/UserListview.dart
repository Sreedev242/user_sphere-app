import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:user_sphere/Application/bloc/user_bloc.dart';
import 'package:user_sphere/Core/constatnts.dart';
import 'package:user_sphere/Presentation/LoginScreen.dart';
import 'package:user_sphere/Presentation/UserDetails.dart';
import 'package:user_sphere/Widgets/SnackbarWidget.dart';

class UserListviewScreen extends StatelessWidget {
  const UserListviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<UserBloc>().add(UserEvent.started());
    return Scaffold(
      appBar: AppBar(
        actionsIconTheme: IconThemeData(color: Colors.white),
        actions: [
        
          IconButton(onPressed: ()async{
            SharedPreferences sf=await SharedPreferences.getInstance();                            await sf.setBool('LoggedIn', false);
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) {
           return LoginScreen();
          },));
          }, icon: Icon(Icons.logout))
        ],
        backgroundColor: Constants.kAppColor,
        centerTitle: true,
        title: Text(
          'User',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              return state.isError? Center(child: Text(state.errorMsg,style: TextStyle(fontStyle: FontStyle.italic),),)
              :state.isLoading?Center(child: CircularProgressIndicator(color: Constants.kAppColor,),):
               ListView.separated(
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder:(context) {
                            return UserDetailsScreen(
                              
                              userdata: state.resultList!.result[index]);
                          },));
                        },
                        leading: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 58, 131, 183),
                          child: Center(
                            child: Text(
                              textAlign: TextAlign.center,
                              '${state.resultList!.result[index].Id}',
                              // state.resultList[index]['id'].toString(),
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        title: Text(
                          'User ${state.resultList?.result[index].Id}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 3,
                    );
                  },
                  itemCount:state.resultList!.result.length);
            },
          )),
    );
  }
}
