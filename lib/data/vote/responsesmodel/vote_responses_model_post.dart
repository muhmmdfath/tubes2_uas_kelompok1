// To parse this JSON data, do
//
//     final voteResponsesModelPost = voteResponsesModelPostFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

VoteResponsesModelPost voteResponsesModelPostFromJson(String str) => VoteResponsesModelPost.fromJson(json.decode(str));

String voteResponsesModelPostToJson(VoteResponsesModelPost data) => json.encode(data.toJson());

class VoteResponsesModelPost {
    final String message;
    final int id;
    final String imageId;
    final String subId;
    final int value;
    final String countryCode;

    VoteResponsesModelPost({
        required this.message,
        required this.id,
        required this.imageId,
        required this.subId,
        required this.value,
        required this.countryCode,
    });

    factory VoteResponsesModelPost.fromJson(Map<String, dynamic> json) => VoteResponsesModelPost(
        message: json["message"],
        id: json["id"],
        imageId: json["image_id"],
        subId: json["sub_id"],
        value: json["value"],
        countryCode: json["country_code"],
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "id": id,
        "image_id": imageId,
        "sub_id": subId,
        "value": value,
        "country_code": countryCode,
    };
}
