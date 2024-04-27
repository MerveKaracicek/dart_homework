//SORULAR:
/*1- Sehirleri tutan bir liste olusturun, 4 tane il ekleyip sırasıyla ekrana yazdırın.

2- Keyleri string, değerleri dynamic olan bir map olusturun. Bu map yapısında bilgisayarınızın işlemci çekirdek sayısını, ram miktarını ve ssd olup olmadıgı bilgisini tutun ve ekrana yazdırın.

3- Her bir elemanında  keyleri string,  value'leri dynamic  olan bir liste olusturun.
Bu listedeki her bir eleman il adını, ilçe sayısını, plaka kodunu tutsun.
Sonrasında da bu listeyi okunaklı bir şekilde yazdırın
Örnek listenin 1. elemanında bulunan il ankara, plaka kodu:06, ilçe sayısı:10(değerler rastgele olabilir).

4- 5 elemanlı iki farklı liste olusturun. Elemanlar 0-50'ye rastgele şekilde olusturulsun
Bu elemanları tek bir listeye aktarın
Olusan son listenin elemanlarının karelerini tutan set yapısı olusturup ekrana yazdırın.

5- Kullanıcıdan aldıgınız integer pozitif sayıları bir listede tutun, kullanıcı -1 değerini
girdiğinde girilen sayıların ortalamasını ekrana yazdırın.
*/
import 'dart:io';
import 'dart:math';

void main(List<String> args) {
//CEVAP 1:
List<String> favoriSehirlerim = [];
favoriSehirlerim.add("İzmir");
favoriSehirlerim.add("Eskişehir");
favoriSehirlerim.add("Bursa");
favoriSehirlerim.add("Antalya");

for (String sehir in favoriSehirlerim){
  print("Favori şehirim : $sehir");
}

//CEVAP 2:
Map <String,dynamic> ozellikler = {"işlemci çekirdek sayısı ": 16, "ram" : 8 };
ozellikler["ssd var mı ?"] =true;
print(ozellikler);

for (var ozellik in ozellikler.entries){
  print("Özellik : ${ozellik.key} ve değer : ${ozellik.value}");
}


//CEVAP 3:
List<Map<String,dynamic>> iller = [];
Map<String,dynamic> il1 = Map();
il1["ad"]="İzmir";
il1["ilce_sayisi"]= 30;
il1["plaka"] = 35 ;
Map<String,dynamic> il2 = {"ad": "Ankara" , "ilce_sayisi" : 20,"plaka":06};

iller.add(il1);
iller.add(il2);

for (int i =0 ;i<iller.length;i++){
  var current = iller[i];
  print("${i+1}. elemandaki şehir : ${current["ad"]} , ilçe sayısı : ${current["ilce_sayisi"]} , plaka kodu : ${current["plaka"]}");
}

//CEVAP 4:

List <int> liste1 = List.filled(5, 0);
List <int> liste2 = List.filled(5, 0);
List <int> sonList = [];

for (int i = 0 ; i<5;i++){
  liste1[i]= Random().nextInt(50);
  liste2[i]=Random().nextInt(50);
}
sonList=[...liste1,...liste2];
Set <int> kareler = {};
for (int i =0 ; i<sonList.length;i++){
    kareler.add(sonList[i]*sonList[i]);
}
print(sonList);
print(kareler);


//CEVAP 5 : 5- Kullanıcıdan aldıgınız integer pozitif sayıları bir listede tutun, kullanıcı -1 değerini
//girdiğinde girilen sayıların ortalamasını ekrana yazdırın.
int no = 0;
List <int> number = [];

do{
  print("Lütfen bir sayı giriniz:");
  no = int.parse(stdin.readLineSync()!);
  if (no != -1){
     number.add(no);
  }
} while(no != -1);

print("Kaç tane not girildi : ${number.length}");
print("Ortalama : ${ortBul(number)}");

}

double ortBul(List<int> liste){
  int toplam = 0;
  for(int i=0;i<liste.length;i++){
    toplam += liste[i];
  }
  return toplam/liste.length ;

}