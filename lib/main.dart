import 'package:apiworldtimeapp/pages/choose_location.dart';
import 'package:apiworldtimeapp/pages/home.dart'; // by using this, we are actually using
import 'package:apiworldtimeapp/pages/loading.dart';
// the package that we have created rather than specifying the relative path
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/':(context)=>Loading(),
      '/home':(context)=>Home(),
      '/location':(context)=>ChooseLocation()
    },
  ));
}







