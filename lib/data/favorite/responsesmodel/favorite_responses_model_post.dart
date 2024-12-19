import 'package:meta/meta.dart';
import 'dart:convert';

FavoriteResponsesModelPost favoriteResponsesModelPostFromJson(String str) =>
    FavoriteResponsesModelPost.fromJson(json.decode(str));

String favoriteResponsesModelPostToJson(FavoriteResponsesModelPost data) =>
    favoriteResponsesModelPostToJson(data);

class FavoriteResponsesModelPost {
  final String message;
  final int id;

  FavoriteResponsesModelPost({
    required this.message,
    required this.id,
  });

  factory FavoriteResponsesModelPost.fromJson(Map<String, dynamic> json) =>
      FavoriteResponsesModelPost(
        message: json['message'],
        id: json['id'],
      );

  Map<String, dynamic> toJson() => {
        'message': message,
        'id': id,
      };
}
