import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/home_bloc.dart';


class Home3 extends StatefulWidget {
  const Home3({Key? key}) : super(key: key);

  @override
  State<Home3> createState() => _Home3State();
}

class _Home3State extends State<Home3> {
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(onPressed: () {
      BlocProvider.of<HomeBloc>(context)
          .add(LoadApiEvent());
      int count = 0;
      Navigator.popUntil(context, (route) {
        return count++ == 2;
      });
      print(count);
      // Navigator.of(context).popUntil((route) => route.isFirst);
    }, child: Text('Tuh3'),);
  }
}
