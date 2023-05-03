import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen_2 extends StatefulWidget {
  var name;
   Screen_2({Key? key,required this.name}) ;//: super(key: key)

  @override
  State<Screen_2> createState() => _Screen_2State();
}

class _Screen_2State extends State<Screen_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text(widget.name) ),
      body:SafeArea(child: Column(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Go Back"))
        ],
      ),)





     );
  }
}
