import 'package:bloc_exercise/services/boardService.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import 'bloc/home_bloc.dart';

class TestApi extends StatefulWidget {
  const TestApi({Key? key}) : super(key: key);

  @override
  State<TestApi> createState() => _TestApiState();
}

class _TestApiState extends State<TestApi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if(state is HomeLoadedState2){
                  print('yes');
                
                }
                return Container(
                  child: ElevatedButton(
                      onPressed: () {
                        //XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);

                        //BlocProvider.of<HomeBloc>(context).add(LoadApiEvent());
                      },
                      child: const Text('Select Image')),
                );
              },
            ),
            ElevatedButton(
                      onPressed: () {
                        //XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);

                        BlocProvider.of<HomeBloc>(context).add(LoadApiEvent2());
                      },
                      child: Text('Select Image')),
          ],
        ),
      ),
    );
  }
}
