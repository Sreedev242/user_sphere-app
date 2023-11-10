import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_sphere/Domain/model.dart';
import 'package:dio/dio.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserState.initial()) {
    on<_Started>((event, emit) async {
      emit(UserState(
          errorMsg: '',
          isError: false,
          isLoading: true,
          resultList: Modelclass(result: [])));
      try {
        Response response = await Dio(BaseOptions())
            .get('https://jsonplaceholder.typicode.com/posts');
        if (response.statusCode == 200 || response.statusCode == 201) {
          List<dynamic> responseData = response.data;

          // Assuming Modelclass has a method to parse a list of items
          List<Result> resultList =
              responseData.map((item) => Result.fromJson(item)).toList();
          // print(resultList.toString());
          emit(UserState(
              errorMsg: '',
              isError: false,
              isLoading: false,
              resultList: Modelclass(result: resultList)));
        } else {
          emit(UserState(
              errorMsg: 'Error occred !!',
              isError: true,
              isLoading: false,
              resultList: Modelclass(result: [])));
          print('Error occured');
        }
      } catch (e) {
        emit(UserState(
            errorMsg: '$e',
            isError: true,
            isLoading: false,
            resultList: Modelclass(result: [])));

        print(e);
      }
    });
  }
}
