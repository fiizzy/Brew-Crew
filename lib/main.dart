import 'package:flutter/material.dart';
import 'views/widgets/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
 Widget build(BuildContext context) {
   return (
     new MaterialApp(
       home: Login(),
       title: 'Firebase Login',
       theme: ThemeData.dark(),
       
     )
   );
 }
}
