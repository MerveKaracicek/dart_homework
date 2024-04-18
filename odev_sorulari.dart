import 'dart:io';

void main(List<String> args) {
  /* Örnek 1: İki notu girilen öğrencinin ortalamasını bularak sonucu ekranda gösteren algoritmayı yapın.

Örnek 2: Fiyatı girilen ürüne %18 kdv ekleyerek son fiyatı hesaplayan algoritmayı yazın. */

//CEVAP 1:
print("Birinci notu giriniz:");
int not1= int.parse(stdin.readLineSync()!);
print("İkinci notu giriniz:");
int not2 = int.parse(stdin.readLineSync()!);
var ort=(not2+not1)/2;
print("Ortalamanız: $ort");

//CEVAP 2:
print("Ürün fiyatını giriniz:");
int fiyat = int.parse(stdin.readLineSync()!);
var yeniFiyat= fiyat + (fiyat*18)/100;
print("KDV'li fiyat = $yeniFiyat");

}