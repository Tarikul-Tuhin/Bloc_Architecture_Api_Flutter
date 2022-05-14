// import 'dart:async';


// import 'package:bloc_exercise/home/bloc/home_bloc.dart';
// import 'package:bloc_exercise/services/boardService.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';


// import 'home2.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);


//   @override
//   State<HomePage> createState() => _HomePageState();
// }


// class _HomePageState extends State<HomePage> {

//   // @override
//   // void initState() {
//   //   Timer.periodic(Duration(seconds: 1), (timer) {
//   //     BlocProvider.of(context);
//   //   });
//   //   super.initState();
//   // }

//   String a = 'ami';

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     print( YourBloc().pro());
//     //YourBloc().someStream;
//   }




//   @override
//   Widget build(BuildContext context) {
//     print('Yes');
//     return BlocProvider(
//       create: (context) => HomeBloc(
//         RepositoryProvider.of<BoardService>(context),
//       )..add(LoadApiEvent()),
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text("Bloc Api"),
//         ),
//         body: SingleChildScrollView(
//           child: Column(

//             children: [
//               BlocBuilder<HomeBloc, HomeState>(
//                 // bloc: BoardService().getBoardActivity(),
//                 builder: (context, state) {
//                   if (state is HomeLoadingState) {
//                     return const CircularProgressIndicator();
//                   }
//                   if (state is HomeLoadedState) {
//                     return Center(
//                       child: Column(
//                         children: [
//                           Text(state.activityName),
//                           Text(state.activityType),
//                           Text(
//                             state.key,
//                           ),
//                           ListView.builder(
//                                     shrinkWrap: true,
//                                     itemCount: 4,
//                                     itemBuilder: (context, index) {
//                                       //print(snapshot.data);
//                                       return Card(
//                                         color: Colors.blue[200],
//                                         child: ListTile(
//                                           title: Text(state.activityName),
//                                         ),
//                                       );
//                                     }),


//                           ListTile(
//                             title: Text(state.activityName),
//                           ),
//                           a == 'ami'?
//                           ElevatedButton(

//                             onPressed: () async{

//                               a = 'amina';
//                               setState(() {

//                               });

//                              // Navigator.of(context).push(
//                              //   MaterialPageRoute<Home2>(
//                              //     builder: (_) => BlocProvider.value(
//                              //       value: BlocProvider.of<HomeBloc>(context),
//                              //       child: Home2(),
//                              //     ),
//                              //   ),
//                              // );


//                                // BlocProvider.of<HomeBloc>(context)
//                                //     .add(LoadApiEvent());




//                             },
//                             child: const Icon(Icons.refresh),
//                           ):  ElevatedButton(

//                             onPressed: () async{

//                               a = 'ami';
//                               setState(() {

//                               });

//                               // Navigator.of(context).push(
//                               //   MaterialPageRoute<Home2>(
//                               //     builder: (_) => BlocProvider.value(
//                               //       value: BlocProvider.of<HomeBloc>(context),
//                               //       child: Home2(),
//                               //     ),
//                               //   ),
//                               // );


//                               // BlocProvider.of<HomeBloc>(context)
//                               //     .add(LoadApiEvent());




//                             },
//                             child: const Icon(Icons.cancel),
//                           ),


//                         ],
//                       ),
//                     );
//                   }
//                   return Container();
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }



// // This is the class that handle all the logic such as receiving data from API, process those data, etc (I'll call it a data processing unit)
// class YourBloc {

//   Stream pro() async*{
//     while(true){
//       await Future.delayed(Duration(milliseconds: 1000000));
//       final a = await BoardService().getBoardActivity();
//       yield a;
//     }
//   }

//   // Create a stream to send processed data to the UI
//   // final StreamController _someController = StreamController();
//   //
//   // Stream get someStream => _someController.stream;
//   //
//   //
//   // // Get the data from API, then send the data to stream here. Usually an async function
//   // loadData() async {
//   //   final data = await BoardService().getBoardActivity(); // Get data from API
//   //   //var processedData = processYourData(data);
//   //
//   //   var a = data.activity;
//   //
//   //   print(a);
//   //
//   //   _someController.sink.add(data);
//   //
//   //   return someStream;
//   //
//   // }
//   // a(){
//   //   print(someStream);
//   // }
//   //
//   //
//   //
//   // dispose() {
//   //   _someController.close();
//   // }
// }
