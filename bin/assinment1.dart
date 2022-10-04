import 'dart:io';

import 'package:assinment1/assinment1.dart' as assinment1;

import 'utils/utils.dart';

void main(List<String> arguments) {
  print('Hello world: ${assinment1.calculate()}!');
  //Assignment One
  //##############
  //-Write a Program that takes a number from user
  // then prints “yes” if number is even and “no” if number is odd
  var answer = isEven() ? 'Yes' : 'No' ;
  print('Is the number you entered even ? answer : $answer');

  //-Sorting Three Int Numbers
  // Write a program that reads in three floating-point numbers and sorts them.
  //  For example
  // 4
  // 9
  // 2
  var arr = <int>[];
  arr = getArrayFromUser();

  UtilsImplementation().doSort(arr);


}

bool isEven(){
  int input = getIntFromUser();
  bool result = input % 2 == 0 ? true : false ;

  return result;
}

int getIntFromUser(){
  int? input;
  do{
    print('Enter the Number');
    input = int.tryParse(stdin.readLineSync() ?? '');
  }while(input == null);

  return input;
}

String getStrFromUser(){
  String? input;
  do{
    print('Enter the Something');
    input = stdin.readLineSync() ?? '';
  }while(input.isEmpty);

  return input;
}

List<int> getArrayFromUser(){
  var arr = <int>[];
  int? len;
  do{
    print('Enter the length of the Array');
    len = int.tryParse(stdin.readLineSync() ?? '');
  }while(len == null);

  for(var i = 0; i < len ; i++){
    int? input;
    do{
      print('Enter element at index $i');
      input = int.tryParse(stdin.readLineSync() ?? '');
    }while(input == null);
    arr.add(input);
  }

  return arr;
}

