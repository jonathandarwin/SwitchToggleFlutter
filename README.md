# Swith Toggle On/Off Flutter - 20 July 2019

<img src="https://user-images.githubusercontent.com/48744669/61555425-98a98a00-aa89-11e9-82a5-dc94dddc98b3.png" width="30%" />
<img src="https://user-images.githubusercontent.com/48744669/61555362-6bf57280-aa89-11e9-8247-f05d3ec30bb3.png" width="30%" />

## Here the code's explanation line by line (overall)
    
    import 'package:flutter/material.dart';
  Explanation : Import some package that will be used in this file
  <br>
  
    void main() => runApp(Main());
  Explanation : Assume as the function that will be executed first when the apps running. It will run the class named "Main"
  ### Note : to create an instance of the class (create object), usually we used "new Main()", but in dart we use "Main()" instead
  <br>
  
    class Main extends StatelessWidget
  Explanation : Here we declare a class named "Main" extends the "StatelessWidget" class. <strong>Stateless</strong> means that this widget is in final condition (immutable), cannot be changed during runtime.
<br>

    @override
    Widget build(BuildContext context)
  Explanation : Every class that extends the Widget (Stateless and Stateful that will be discussed soon) must override the method named "build" with "BuildContext" as the parameter. This method will be executed when the class is initiated.
<br>

    return MaterialApp(
      title: "Switch Toggle App (Flutter)",
      home: Home(),
    );
  Explanation : "MaterialApp" is a library designing UI. In this code, we use the 'title' and 'home' parameter. Take a look at the 'home' parameter. we called "Home()" and it will create a class named Home.
<br>
    
    class Home extends StatefulWidget
  Explanation : we initiate a class named "Home", extends the "StatefulWidget" class. <strong>StatefulWidget</strong> used when we want to change the widget in the runtime. It means that class Home() can be mutable/change in the runtime.
<br>

    @override
    HomeState createState() => HomeState();
  Explanation : because the widget is mutable, it means that it has a state. To handle the state of the widget, we need to create a class to manage the state. After we created the class that will manage the state, then we create the class in "createState()" method (a method that should be override when using StatefulWidget).
<br>

    class HomeState extends State<Home>
  Explanation : "HomeState" class is a class that will manage the state of "Home" class. it extends the "State<>" class (a generic class).
<br>

    bool status = true;
  Explanation : This attribute is a flagging for us to decide whether the switch is on / off. if the "status" attribute is "true" then the switch is on, <i>vice versa</i>
<br>
    
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
  Explanation : as always, this method should be override. It returns a Scaffold (it's like a simple widget layout that help us to make a simple layout easier). Notice that we set backgroundColor and the text with method (getText(), getBackgroundColor(), and getFloatingButtonColor()). we will discussed about it soon. In this constructor, we set backgroundColor, appBar, body, and floatingActionButton. Noticed that in floatingActionButton we set "onPressed" attribute. when the FAB is clicked, it will trigger "updateStatus" method.
<br>

    void updateStatus(){
        setState(() {
            status = !status;
        });
    }
  Explanation : Notice that we use "setState". "setState" is a function to change the state of the widget. Just for now, just simply assumed that when we called "setState", it will refresh the widget, and the attribute and the value will be set again. And in the setState(), we set status = !status, it means that we reverse the value of the status (if status = true then status = false, <i>visa versa</i>)
<br>

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
  Explanation : this line of code will check whether the status is true or false. If the status = true, then it will return a "Text" widget with it attribute to the caller function. This function will be executed when <strong>the state of this widget changed</strong>
<br>

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
 Explanation : This 2 functions have the same purpose as the getText() above. It will be called when the state of the widget is changed. The difference is this function will return a color that will be set in 'backgroundColor' attribute.
