import 'package:freezed_annotation/freezed_annotation.dart';
part 'model.freezed.dart';
part 'model.g.dart';
// @freezed
// class Modelclass with _$Modelclass{
//   const factory Modelclass({
//     required List<Result> result,
//   }) = _Modelclass;

//   factory Modelclass.fromJson(Map<String, dynamic> json) => _$ModelclassFromJson(json);
// }

@freezed
class Result with _$Result{
  const factory Result({
    @JsonKey(name: 'userId') required String UserId,
    @JsonKey(name: 'id') required String Id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'body') required String body,


  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}