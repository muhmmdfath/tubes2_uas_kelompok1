import 'package:meta/meta.dart';
import 'dart:convert';

FavoritesResponsesModelSearch favoritesResponsesModelSearchFromJson(
        String str) =>
    favoritesResponsesModelSearchFromJson(str);

String favoritesResponsesModelSearchToJson(
        FavoritesResponsesModelSearch data) =>
    json.encode(data.toJson());

class FavoritesResponsesModelSearch {
  final int id;
  final String userId;
  final String imageId;
  final String subId;
  final DateTime createdAt;
  final Image image;

  FavoritesResponsesModelSearch({
    required this.id,
    required this.userId,
    required this.imageId,
    required this.subId,
    required this.createdAt,
    required this.image,
  });

  factory FavoritesResponsesModelSearch.fromJson(Map<String, dynamic> json) =>
      FavoritesResponsesModelSearch(
        id: json['id'],
        userId: json['user_id'],
        imageId: json['image_id'],
        subId: json['sub_id'],
        createdAt: DateTime.parse(json['created_at']),
        image: Image.fromJson(json['image']),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'user_id': userId,
        'image_id': imageId,
        'sub_id': subId,
        'created_at': createdAt.toIso8601String(),
        'image': image.toJson(),
      };
}

class Image {
  Image();

  factory Image.fromJson(Map<String, dynamic> json) => Image();

  Map<String, dynamic> toJson() => {};
}
