# Swith Toggle On/Off (Flutter)

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

    
    
