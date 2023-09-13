// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';
import 'package:imc_calc_dart/exceptions/name_exception.dart';
import 'package:imc_calc_dart/exceptions/value_exception.dart';


String lerString({String string = "", bool value = false}) {
  if(string.isNotEmpty) print(string);
  final str = stdin.readLineSync(encoding: utf8);
  try{
    if (str!.trim() == "") throw NameException();
    if(value == false && str.contains(RegExp(r'^[0-9]*$'))) throw NameException();
    return str;
  } catch(e){
    print(NameException());
    return lerString(string: string);
  }

}

double? lerDouble({String string = ""}) {
  if(string.isNotEmpty) print(string);
  final value = lerString(value: true).replaceFirst(',', '.');
  try{
    return double.parse(value);
  } catch (e){
    print(ValueException());
    return lerDouble(string: string);
  }
}
