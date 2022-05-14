import 'package:flutter/material.dart';

class Testing extends StatefulWidget {
  const Testing({Key? key}) : super(key: key);

  @override
  State<Testing> createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    var a = MediaQuery.of(context).size.width -
        MediaQuery.of(context).size.width * 0.1;
    var b = MediaQuery.of(context).size.width - a;
    print(a);
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Row(
          children: [
            Container(
              height: h,
              width: b,
              color: Colors.amber,
              child: Column(
                children: [
                  Text(b.toString()),
                  Container(
                    height: h * 0.1,
                    color: Colors.black,
                    child: Column(
                      children: [
                        ElevatedButton(

                            onPressed: () {},
                            child: Column(
                              children: [
                                FittedBox(
                                  child: Text(
                                    (h * 0.1).toString(),
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  fit: BoxFit.fill,
                                ),
                                FittedBox(
                                  child: Text(
                                    b.toString(),
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: h,
              width: a,
              color: Colors.red,
              child: ElevatedButton(
                onPressed: () {
                  newe(context);
                },
                child: Text('popup'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

newe(context) {
  showGeneralDialog(
    context: context,
    barrierColor: Colors.black54,
    barrierDismissible: true,
    barrierLabel: 'Label',
    pageBuilder: (_, __, ___) {
      return Align(
        alignment: Alignment.bottomRight,
        child: Container(
          color: Colors.blue,
          child: FlutterLogo(size: 150),
        ),
      );
    },
  );
}

numberExistsDialog(BuildContext context) {
  var numberDialog = Align(
    alignment: const Alignment(0, -0.85),
    child: Material(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Text(
              'Number Already Exists',
              style: TextStyle(color: Colors.red),
              textAlign: TextAlign.center,
            ),
            Text(
              'Use another number',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    ),
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return numberDialog;
    },
  );
}
