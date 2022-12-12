import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'Screens/splash/splash.dart';
import 'injector/hive_injector.dart';

Future<void> main() async{
  await HiveInjector.setup();
  var box = await Hive.openBox('myData');
  runApp(Root());
  // test
}