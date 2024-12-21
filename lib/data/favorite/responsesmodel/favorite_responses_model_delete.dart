// To parse this JSON data, do
//
//     final favoritesResponsesModelDelete = favoritesResponsesModelDeleteFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

FavoritesResponsesModelDelete favoritesResponsesModelDeleteFromJson(String str) => FavoritesResponsesModelDelete.fromJson(json.decode(str));

String favoritesResponsesModelDeleteToJson(FavoritesResponsesModelDelete data) => json.encode(data.toJson());

class FavoritesResponsesModelDelete {
    final String message;

    FavoritesResponsesModelDelete({
        required this.message,
    });

    factory FavoritesResponsesModelDelete.fromJson(Map<String, dynamic> json) => FavoritesResponsesModelDelete(
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "message": message,
    };
}
