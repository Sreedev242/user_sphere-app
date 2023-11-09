part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    required String errorMsg,
    required bool isError,
    required bool isLoading,
    required List resultList
  }) = _Initial;
  
  factory UserState.initial() {
    return UserState(
      errorMsg: '',
      isError: false,
        isLoading: false,
      resultList: [],
        );
  }
}
