import 'dart:io';
void main() {
  List<String> list = [];
  String girilen;
  girilen = stdin.readLineSync()!;
  while (girilen != "=") {
    list.add(girilen);
    girilen = stdin.readLineSync()!;
  }

  while (list.contains("*") || list.contains("/")) {
    for (var i = 0; i < list.length; i++) {
      if (list[i] == "*") {
        list[i-1] = (int.parse(list[i-1]) * int.parse(list[i+1])).toString();
        list.removeAt(i+1);
        list.removeAt(i);
      } else if (list[i] == "/"){
        list[i-1] = (double.parse(list[i-1]) / double.parse(list[i+1])).toString();
        list.removeAt(i+1);
        list.removeAt(i);
      }
    }
  }
  while (list.contains("+") || list.contains("-")) {
    for (var i = 0; i < list.length; i++) {
      if (list[i] == "+") {
        list[i-1] = (double.parse(list[i-1]) + double.parse(list[i+1])).toString();
        list.removeAt(i+1);
        list.removeAt(i);
      } else if (list[i] == "-"){
        list[i-1] = (double.parse(list[i-1]) - double.parse(list[i+1])).toString();
        list.removeAt(i+1);
        list.removeAt(i);
      }
    }
  }
  print(list[0]);
}