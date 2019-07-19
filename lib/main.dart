import 'package:flutter/material.dart';

void main() => runApp(Main());

class Main extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Switch Toggle App (Flutter)",
      home: Home(),
    );
  }  
}

class Home extends StatefulWidget{
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home>{  

  bool status = true;

  void updateStatus(){
    setState(() {
      status = !status;
    });
  }

  getText(){
    if(status){
      return Text(
        "On",
        style: TextStyle(color: Colors.black),
        );
    }
    else{
      return Text(
        "Off",
        style: TextStyle(color: Colors.white),
        );
    }
  }

  getBackgroundColor(){
    if(status){
      return Colors.white;
    }
    else{
      return Colors.black;
    }
  }

  getFloatingButtonColor(){
    if(status){
      return Colors.red;
    }
    else{
      return Colors.green;
    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: getBackgroundColor(),
      appBar: AppBar(
        title: Text("Switch Toogle App (Flutter)"),
      ),
      body: Center(
        child: getText(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: updateStatus,
        child: Icon(Icons.lightbulb_outline),
        backgroundColor: getFloatingButtonColor(),
      ),
    );
  }
}