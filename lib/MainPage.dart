// ignore: file_names
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/SecondPage.dart';
import 'package:flutter_application_1/TextStyle.dart';

class MainPage extends StatefulWidget{
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _emailController = TextEditingController();
  final _passwordContoller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/fon.jpg"),
            fit: BoxFit.cover,)),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                Expanded(flex: 20,child: Container(), ),
                const Expanded(flex: 20,child: Image(image: AssetImage('assets/logo.png')),),
                Expanded(flex: 15,child: Container(),),
                Expanded(flex: 10,child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 4,
                        color: Colors.grey,
                      ),
                    ]
                  ),
                  child:  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                    prefixIcon: Icon(Icons.people),
                    prefixIconColor: Colors.blueAccent,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none
                    ),
                  ),
                ),),
                Expanded(flex: 5,child: Container(),),
                        Expanded(flex: 10,child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 4,
                        color: Colors.grey,
                      ),
                    ]
                  ),
                  child:  TextField(
                    controller: _passwordContoller,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                    prefixIconColor: Colors.blueAccent,
                    prefixIcon: Icon(Icons.lock, size: 20,),
                    focusedBorder: InputBorder.none,
                    suffixIcon: Icon(Icons.question_mark_sharp),
                    enabledBorder: InputBorder.none
                    ),
                  ),
                ),),
                Expanded(flex: 15,child: Container(),),
                Expanded(flex: 10,child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                     boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 4,
                        color: Colors.grey,
                      ),
                    ]
                  ),
                      child: TextButton(
                  onPressed: (){
                    String login = 'Email';
                    String password = 'Password';
                    if(login == _emailController.text && password == _passwordContoller.text){
                          Navigator.push(
             context,
             MaterialPageRoute(builder: (context) => SecondPage()),
           );
                    }
                    else{
                      showAboutDialog(context: context,applicationLegalese: 'Wrong info' );
                    }
                    
                  }, child: Text('Login', style: button_blue(),),),
                ),),
                Expanded(child: Container(), flex: 20,),
                Expanded(flex: 10,child: Row(
                      children: [
                        Expanded(flex: 10,child: Container(),),
                        Expanded(flex: 5,child: IconButton(icon: const Icon(Icons.visibility_outlined, color: Colors.blueAccent,), onPressed: () {},),),
                        Expanded(flex: 5,child: Container(),),
                        Expanded(child: IconButton(icon: const Icon(Icons.qr_code, color: Colors.blueAccent,), onPressed: () {},), flex: 5,),
                        Expanded(child: Container(),flex: 5,),
                        Expanded(child: IconButton(icon: const Icon(Icons.email_outlined, color: Colors.blueAccent,), onPressed: () {  },),flex: 5,),
                        Expanded(child: Container(),flex: 5,),
                        Expanded(child: Container(
                          child: 
                        IconButton(onPressed: (){}, icon: Icon(Icons.fmd_good_outlined, color: Colors.blueAccent,),)
                        ),flex: 5,),
                        Expanded(child: Container(), flex: 10,)
                      ],
                ),),
                Expanded(flex: 30,child: Container(),)

              ],),
            ),
      ),
      );
  }
}