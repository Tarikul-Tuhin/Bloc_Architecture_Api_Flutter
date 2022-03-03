import 'dart:convert';

import 'package:bloc_exercise/services/boardService.dart';
import 'package:bloc_exercise/services/getMembersService.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home/home.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // Future getMembers(String teamCode) async {
  //   // final prefs = await SharedPreferences.getInstance();
  //   // final String? mobile = prefs.getString('mobile');
  //   // final String? syncCode = prefs.getString('syncCode');
  //   final response;
  //
  //   if (teamCode != null) {
  //     response = await http.post(
  //       Uri.parse('http://192.168.68.129:5000/myteams/memberlist/$teamCode'),
  //       headers: <String, String>{
  //         'Content-Type': 'application/json; charset=UTF-8',
  //       },
  //       body: jsonEncode(<String, String>{
  //         "mobile": '420',
  //         "syncCode": '420',
  //       }),
  //     );
  //     // print('apicall--->');
  //     print(response.body);
  //     return response;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    //getMembers('MeI420');
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiRepositoryProvider(
        providers: [
          RepositoryProvider(
            create: (context) => BoardService(),
          ),
          RepositoryProvider(
            create: (context) => GetMembersList(),
          ),
        ],
        child: HomePage(),
      ),
    );
  }
}
