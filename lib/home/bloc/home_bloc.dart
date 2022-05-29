import 'dart:async';
import 'package:image_picker/image_picker.dart';

import 'package:bloc_exercise/services/boardService.dart';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {

  HomeBloc() : super(HomeLoadingState()) {
   

    on<LoadApiEvent>((event, emit) async {
      // ImagePicker pic = ImagePicker();

      // XFile? image = await pic.pickImage(source: ImageSource.gallery);
     


    //   final activity = await BoardService().getBoardActivity();

    //   // final StreamSubscription t;

    //   // await emit.forEach(stream, onData: HomeLoadedState(activity.activity, activity.type, activity.key));
 
    //  emit(HomeLoadedState(activity.activity, activity.type, activity.key));

       
      





      // const oneSec = Duration(seconds:1);
      // await Timer.periodic(oneSec, (Timer t) {
      //
      //
      //   });

    });


        on<LoadApiEvent2>((event, emit) async {
     // ImagePicker pic = ImagePicker();

     // XFile? image = await pic.pickImage(source: ImageSource.gallery);
     


      final activity = await BoardService().getBoardActivity();

      // final StreamSubscription t;

      // await emit.forEach(stream, onData: HomeLoadedState(activity.activity, activity.type, activity.key));

      if(event is LoadApiEvent2){
        print('object');
        emit(HomeLoadedState(activity.activity, activity.type, activity.key));
      }
 
     else{
       emit(HomeLoadedState2());
     print('Yerag');
     }
     

       
      





      // const oneSec = Duration(seconds:1);
      // await Timer.periodic(oneSec, (Timer t) {
      //
      //
      //   });

    });


    // on<counterApiEvent>((event, emit) async {
    //
    //
    //
    //
    //
    //   final activity = await _boardService.getBoardActivity();
    //   emit(HomeListState(counter=5));
    // });
  }
}

