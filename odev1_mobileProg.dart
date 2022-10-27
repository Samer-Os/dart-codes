import 'dart:io';
void main() {
  List<int> list = [];
  
  for (var i = 0; i < 10; i++) {
    stdout.write("listeye sayi ekle: ");
    int? sayi = int.parse(stdin.readLineSync()!);
    list.add(sayi);
  }
  list.sort((a, b) => a.compareTo(b));
  print("liste elemanlari kucukten buyuge: $list");
  print("liste elemanlari buyukten kucuge: ${list.reversed}");
  
}