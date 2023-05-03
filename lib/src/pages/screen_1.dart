

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferance/src/app.dart';
import 'package:shared_preferance/src/pages/screen_2.dart';
import 'package:shared_preferences/shared_preferences.dart';
   late SharedPreferences sharedPreferences;
   main()async{
     WidgetsFlutterBinding.ensureInitialized();
   sharedPreferences =await SharedPreferences.getInstance();
}

class Screen_1 extends StatefulWidget {

   Screen_1({Key? key}) : super(key: key);


  @override
  State<Screen_1> createState() => _Screen_1State();

}

class _Screen_1State extends State<Screen_1> {
  // var value;
  final _userController =TextEditingController();
  final _paswordController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    getSavedData(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preferance"),
      ),
       drawer: Drawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  controller: _userController,
                  decoration: InputDecoration(labelText: "User Name",
                      border: OutlineInputBorder()),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  obscureText: true ,
                  controller: _paswordController,
                  decoration: InputDecoration(labelText: "Password",
                      border: OutlineInputBorder()),
                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                  cheakLogin();
              saveDataToStorage();
                }, child:Text("Save Value"))
              ],
            ),
          ),
        ),
      ),
    );
  }
 void cheakLogin(){
   final _username =_userController.text;
   final _password =_paswordController.text;
   if(_username==_password){

   }else{
     ScaffoldMessenger.of(context)
         .showSnackBar(SnackBar(content:Text("ERROR")));

   }
 }

  Future<void>saveDataToStorage()async {
    print(_userController.text);
    print(_paswordController.text);
  }

     Future<void>gotoLogin()async{
    final sharedPrefs=await SharedPreferences.getInstance();
    await sharedPrefs.setString("saved_value", _userController.text);
    await sharedPrefs.setString("saved_value", _paswordController.text);
  }
  Future<void>getSavedData(BuildContext context)async{
    final sharedPrefs = await SharedPreferences.getInstance();
    final savedValue =sharedPrefs.getString("saved_value");
    if(savedValue !=null){
      // setState(() {
      //   value=savedValue;
      // });
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen_2(name:"S   avedValue")));
// Column(
//   children: [Text(value)],
// );
    }
  }
}
