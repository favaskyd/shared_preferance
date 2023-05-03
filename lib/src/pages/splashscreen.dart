import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferance/src/pages/screen_1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    gotoLogin();
    // TODO: implement initState
    super.initState();
  }
  // @override
  // void didChangeDependencies() {
  //   // TODO: implement didChangeDependencies
  //   super.didChangeDependencies();
  // }
  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(

            child: Image.asset("asset/images/Profile-Icon-SVG-09856789.png"),

          ),
          Center(
            child: Text("Hello", style: TextStyle(fontSize: 40)),
          )
        ],
      ),
    );
  }
    Future<void> gotoLogin() async {
      await Future.delayed(Duration(seconds: 3));
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Screen_1(),
          ),
      );

  }
}
