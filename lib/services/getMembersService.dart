// To parse this JSON data, do
//
//     final getMembers = getMembersFromJson(jsonString);

import 'dart:convert';
import 'package:http/http.dart' as http;

List<GetMembers> getMembersFromJson(dynamic str) =>
    List<GetMembers>.from(json.decode(str).map((x) => GetMembers.fromJson(x)));

String getMembersToJson(List<GetMembers> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetMembers {
  GetMembers({
    required this.id,
    required this.name,
    required this.mobile,
    required this.pinCode,
    required this.syncCode,
    required this.deviceSerial,
    required this.manufacture,
    required this.modelNumber,
    required this.memberRole,
  });

  String id;
  String name;
  String mobile;
  String pinCode;
  String syncCode;
  String deviceSerial;
  String manufacture;
  String modelNumber;

  String memberRole;

  factory GetMembers.fromJson(Map<String, dynamic> json) => GetMembers(
        id: json["_id"] ?? "",
        name: json["name"] ?? "",
        mobile: json["mobile"] ?? "",
        pinCode: json["pinCode"] ?? "",
        syncCode: json["syncCode"] ?? "",
        deviceSerial: json["deviceSerial"] ?? "",
        manufacture: json["manufacture"] ?? "",
        modelNumber: json["modelNumber"] ?? "",
        memberRole: json["memberRole"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "mobile": mobile,
        "pinCode": pinCode,
        "syncCode": syncCode,
        "deviceSerial": deviceSerial,
        "manufacture": manufacture,
        "modelNumber": modelNumber,
        "memberRole": memberRole,
      };
}

class GetMembersList {
  Future getMembers(String teamCode) async {
    final response = await http.post(
      Uri.parse('http://192.168.68.129:5000/myteams/memberlist/$teamCode'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        "mobile": "420",
        "syncCode": "420",
      }),
    );

    List<dynamic> activity = getMembersFromJson(response.body);

    return activity;
  }
}
