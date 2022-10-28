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
    var i = 0;
    while (i < list.length) {
      if (list[i] == "*") {
        list[i-1] = (int.parse(list[i-1]) * int.parse(list[i+1])).toStringAsFixed(2);
        list.removeAt(i+1);
        list.removeAt(i);
        i = 0;
        print(list);
      } else if (list[i] == "/"){
        list[i-1] = (double.parse(list[i-1]) / double.parse(list[i+1])).toStringAsFixed(2);
        list.removeAt(i+1);
        list.removeAt(i);
        i = 0;
        print(list);
      }
      i++;
    }
  }
  while (list.contains("+") || list.contains("-")) {
    var i = 0;
    while (i < list.length) {
      if (list[i] == "+") {
        list[i-1] = (double.parse(list[i-1]) + double.parse(list[i+1])).toStringAsFixed(2);
        list.removeAt(i+1);
        list.removeAt(i);
        i = 0;
        print(list);
      } else if (list[i] == "-"){
        list[i-1] = (double.parse(list[i-1]) - double.parse(list[i+1])).toStringAsFixed(2);
        list.removeAt(i+1);
        list.removeAt(i);
        i = 0;
        print(list);
      }
      i++;
    }
  }
  print(list[0]); // sonuc
}