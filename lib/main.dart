import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'Screens/splash/splash.dart';

void main() async{
  await Hive.initFlutter();
  var box = await Hive.openBox('myData');
  runApp(Root());
}