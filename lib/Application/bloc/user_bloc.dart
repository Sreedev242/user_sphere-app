import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_sphere/Domain/model.dart';
import 'package:dio/dio.dart';
import 'package:user_sphere/Widgets/SnackbarWidget.dart';
part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserState.initial()) {
    on<_Started>((event, emit)async {
      emit(UserState(
        errorMsg: '',
        isError: false,
        isLoading: true, resultList: []));
      try {
        Response response =await Dio(BaseOptions()).get('https://jsonplaceholder.typicode.com/posts');
      if (response.statusCode==200 || response.statusCode==201) {
        // final List<Result> resList = (response.data as List)
        //     .map((e) => Result.fromJson(e))
        //     .toList();
        List<Map<String,dynamic>>xList= List<Map<String,dynamic>>.from(response.data);
            emit(UserState(errorMsg: '', isError: false, isLoading: false , resultList: xList));
      }else{
        emit(UserState(errorMsg: 'Error occred !!', isError: true, isLoading: false, resultList: []));
        print('Error occured');
      }

      } catch (e) {
        emit(UserState(errorMsg: '$e', isError: true, isLoading: false, resultList: []));

        print(e);
      }
    });
  }
}
