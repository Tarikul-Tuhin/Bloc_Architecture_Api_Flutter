import 'package:bloc_exercise/home/bloc/home_bloc.dart';
import 'package:bloc_exercise/test_for_sharedPRefernce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocTest extends StatefulWidget {
  const BlocTest({Key? key}) : super(key: key);



  @override
  State<BlocTest> createState() => _BlocTestState();
}

class _BlocTestState extends State<BlocTest> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<HomeBloc>(context).add(LoadApiEvent());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if(state is HomeLoadedState2){
              return Text(state.props.length.toString());
            }
            return Container(
              child: ElevatedButton(
                onPressed: (){

                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const TestForSharedPref()),
  );


                },
                child: Text('press'),
              ),
            );
          },
        ),
      ),
    );
  }
}
