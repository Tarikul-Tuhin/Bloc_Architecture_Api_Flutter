import 'package:bloc_exercise/home/bloc/home_bloc.dart';
import 'package:bloc_exercise/home/home4.dart';
import 'package:bloc_exercise/services/boardService.dart';
import 'package:bloc_exercise/testing_mediaQuery.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
      MultiBlocProvider(
        providers: [
            BlocProvider(create: (context) => HomeBloc()..add(LoadApiEvent())),
        ],
        child: MaterialApp(home: TestApi()),
      );
    
  }
}
