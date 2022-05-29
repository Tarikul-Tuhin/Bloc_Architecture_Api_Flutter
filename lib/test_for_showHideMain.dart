import 'package:bloc_exercise/test_for_widgetshowhide.dart';
import 'package:flutter/material.dart';

class TestForShowHideMain extends StatefulWidget {

  TestForShowHideMain({ Key? key, required this.tuhin }) : super(key: key);

  String tuhin;

  @override
  State<TestForShowHideMain> createState() => _TestForShowHideMainState();
}

class _TestForShowHideMainState extends State<TestForShowHideMain> {
  @override
  Widget build(BuildContext context) {
    print(widget.tuhin);
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.blue,
          child: Column(
            children: [

             customElevatedButton(
               callback2: (){
                 widget.tuhin = 'press korsi';
                 setState(() {
                   
                 });
               },
               callback: () {
                   widget.tuhin = 'tuhin tipse';
                 setState(() {
                   
                 });
               
                 
               },
               set: (String value){

                 setState(() {
                   widget.tuhin = value;
                 });

               } ,

               setPage: (String value) {
    setState(() {
      widget.tuhin = value;
    });
  },
             ),

              // ElevatedButton(onPressed: (){
              //   widget.tuhin = 'press korsi';
              //   setState(() {
                  
              //   });
              // }, child: Text('SideButton')),






              widget.tuhin == 'press korsi'?
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ):widget.tuhin == 'tuhin tipse'? Text('ho /na'):const Center(child: Text('False')),

              ElevatedButton(onPressed: (){

                // print(widget.tuhin);
                // setState(() {
                  
                // });
               
              }, child: Text('Press')),
            ],
          ),
          
        ),
      ),
    );
  }
}