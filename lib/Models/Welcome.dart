// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<Welcome> welcomeFromJson(String str) => List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));

String welcomeToJson(List<Welcome> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Welcome {
  Welcome({
    this.username,
    this.comments,
  });

  String username;
  String comments;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    username: json["username"],
    comments: json["comments"],
  );

  Map<String, dynamic> toJson() => {
    "username": username,
    "comments": comments,
  };
}
