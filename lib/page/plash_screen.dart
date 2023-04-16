
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:win_fall/page/home_page.dart';

class PlashScreen extends StatefulWidget {
  const PlashScreen({Key? key}) : super(key: key);

  @override
  State<PlashScreen> createState() => _PlashScreenState();
}

class _PlashScreenState extends State<PlashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState( );
    Future.delayed(const Duration(seconds: 2)).then((value) {
      Navigator.of(context).pushReplacement(
          CupertinoPageRoute(builder: (ctx) => Home()));
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Container(

          child: Column(
            children: <Widget>[
              Expanded(
                child: Center(
                  child: Image.asset("assets/win.jpg"),
                ),
              ),
              Align(
                child: CircularProgressIndicator(),
              ),
              SizedBox(height: 30,),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text("Win Fall", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              ),
              Align(
                alignment: Alignment.bottomCenter,
             //   child: Text("Northern University Bangladesh"),
              ),
            ],
          ),

        ),
      ),
    );
  }
}