
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TestForSharedPref extends StatefulWidget {
  const TestForSharedPref({ Key? key }) : super(key: key);

  @override
  State<TestForSharedPref> createState() => _TestForSharedPrefState();
}

class _TestForSharedPrefState extends State<TestForSharedPref> {

  String st = 'fg';

  TextEditingController txt = TextEditingController();

  @override
  void initState() {
   
    super.initState();
     SharedPreferences.getInstance().then((prefs) {
      // setState(() => status = prefs.getBool('isLoggedIn'));
      setState(() {
     if(prefs.getString
     ('action') != null){
        st = prefs.getString('action')!;
        txt.text = st;

     }

     
       
      });

      print(st);
      //print(token);
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.amber,
              child: TextField(
                controller: txt,
              ),
            ),

            ElevatedButton(onPressed: () async{
              var pref = await SharedPreferences.getInstance();
              var  a = await pref.setString('action', txt.text);
              //final success = await pref.remove('action');
              //txt.text = a.toString();
              print(txt.text);
              

              //txt.text = s.toString();


            }, 
            
            child: const Text('Tuhin')),
          ],
        ),
      ),
    );
  }
}

