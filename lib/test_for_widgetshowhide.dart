// import 'package:bloc_exercise/test_for_showHideMain.dart';
import 'package:bloc_exercise/test_for_showHideMain.dart';
import 'package:flutter/material.dart';

// class TestForWidgetShowHide extends StatefulWidget {
//   const TestForWidgetShowHide({ Key? key }) : super(key: key);

//   @override
//   State<TestForWidgetShowHide> createState() => _TestForWidgetShowHideState();
// }

// class _TestForWidgetShowHideState extends State<TestForWidgetShowHide> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: ElevatedButton(
//           onPressed: (){

//             String tuhin = 'press korsi';

//             TestForShowHideMain(tuhin: tuhin,);



//           },
//           child: Text('Press'),
//         ),
//       ),
//     );
//   }
// }

// Widget Tui(){
//   return ElevatedButton(onPressed: (){
    
//   }, child: Text('Tuhin'));
// }

class customElevatedButton extends StatefulWidget {
  final void Function(String) setPage;
  Function set;
   VoidCallback callback;
   VoidCallback callback2;
  customElevatedButton({ Key? key , required this.setPage, required this.callback, required this.callback2, required this.set}) : super(key: key);

  @override
  State<customElevatedButton> createState() => _customElevatedButtonState();
}

class _customElevatedButtonState extends State<customElevatedButton> {

  int pressed = -1;
  int pressed2 = -1;
  String pressed3 = '';
  @override
  Widget build(BuildContext context) {
     return Column(
       children: [
         ElevatedButton(

           style: ElevatedButton.styleFrom(
              primary: pressed3 == 'press3' ?
             Color(0xff1ecbe1):Color(0xffe1341e),
           ),
           
           onPressed: (){
           //widget.setPage('tuhin tipse');
           widget.callback();
           pressed2 = 0;
           pressed = -1;
           pressed3 = 'press3';
           setState(() {
             
           });
         }, child: Text('side 2')),
         ElevatedButton(

           style: ElevatedButton.styleFrom(
             primary: pressed3 == 'press2' ?
             Color(0xff1ecbe1):Color(0xffe1341e),
           ),
           
           onPressed: (){
           widget.set('press korsi');
           pressed = 0;
           pressed2 = -1;
           pressed3 = 'press2';
           setState(() {
             
           });
           
    //String who = 'press korsi';
   // widget.callback2();

    //widget.setPage('press korsi');


// Navigator.push(
//     context,
//     MaterialPageRoute(
//       builder: (context) => TestForShowHideMain(tuhin: who,),
//     ));
   
    // setState(() {
    //    TestForShowHideMain(tuhin: who,);
    // });
   

  }, child: Text('SideButton')),
       ],
     );
}
}