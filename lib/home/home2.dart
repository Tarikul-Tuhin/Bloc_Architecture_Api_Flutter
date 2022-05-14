import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/home_bloc.dart';
import 'home3.dart';


class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);



  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {

  pop() {

    return Navigator.of(context).pop();

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();

        }, icon: Icon(Icons.skip_previous),),
      ),
        body: Row(
          children: [
            ElevatedButton(onPressed: () {
              BlocProvider.of<HomeBloc>(context)
                  .add(LoadApiEvent());
              Navigator.of(context).pop();
            }, child: Text('Tuh'),),
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute<Home3>(
                  builder: (_) => BlocProvider.value(
                    value: BlocProvider.of<HomeBloc>(context),
                    child: Home3(),
                  ),
                ),
              );
            }, child: Text('Tuh2'),),
          ],
        )));
  }
}
