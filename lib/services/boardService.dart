// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    required this.activity,
    required this.type,
    required this.participants,
    required this.price,
    required this.link,
    required this.key,
    required this.accessibility,
  });

  String activity;
  String type;
  num participants;
  num price;
  String link;
  String key;
  num accessibility;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        activity: json["activity"],
        type: json["type"],
        participants: json["participants"],
        price: json["price"],
        link: json["link"],
        key: json["key"],
        accessibility: json["accessibility"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "activity": activity,
        "type": type,
        "participants": participants,
        "price": price,
        "link": link,
        "key": key,
        "accessibility": accessibility,
      };
}

class BoardService {
  Future<Welcome> getBoardActivity() async {
    final response =
        await get(Uri.parse('https://www.boredapi.com/api/activity/'));
    final activity = welcomeFromJson(response.body);
    //print(activity);
    return activity;
  }
}

// class YourBloc {
//
//   // Create a stream to send processed data to the UI
//   final StreamController _someController = StreamController();
//
//   Stream get someStream => _someController.stream;
//
//   // Get the data from API, then send the data to stream here. Usually an async function
//    loadData() async {
//     final data = await BoardService().getBoardActivity(); // Get data from API
//     //var processedData = processYourData(data);
//     print(someStream);
//     return _someController.add(data);
//   }
//
//   dispose() {
//     _someController.close();
//   }
// }

