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
    
