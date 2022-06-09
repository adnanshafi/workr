import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
part 'user.g.dart';

enum UserType {
  @JsonValue('empty')
  empty,
  @JsonValue('normal')
  normal,
  @JsonValue('worker')
  worker,
}

@JsonSerializable()
class User extends Equatable {
  const User({
    this.uid = '',
    this.firstName = '',
    this.lastName = '',
    this.storePath = '',
    this.imageUrl = '',
  });

  final String uid;
  final String firstName;
  final String lastName;
  final String storePath;
  final String imageUrl;

  @override
  List<Object?> get props => [
        uid,
        firstName,
        lastName,
        storePath,
        imageUrl,
      ];
  Map<String, dynamic> toJson() => _$UserToJson(this);
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
