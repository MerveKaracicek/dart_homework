import 'dart:io';

void main(List<String> args) {
  print("İsminizi girin: ");
  String? isim= stdin.readLineSync();
  print("Girilen isim = $isim");

  print("Yaşınızı girin:");
  int yas = int.parse(stdin.readLineSync()!);
  yas=yas+7;
  print("yas= $yas");

}