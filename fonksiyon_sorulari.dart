/*
SORU1: Parametre olarak  bir tane int sayı alan fonksiyon yazınız.
Bu fonksiyon aldığı değere kadar olan çift sayıların toplamını geriye döndürsün..

SORU2: Daire alanını hesaplayan fonksiyonu yazınız. PI sayısı opsiyonel olmalı
Eğer PI sayısı verilmediyse varsayılan olarak 3,14 alarak hesaplama yapın.

SORU3: Bir ücgenin kenarlarını isimlendirilmiş parametre olarak alan fonksiyon yazınız.
Bu fonksiyon kenar değerlerine göre bu üçgenin çeşit kenar ikiz kenar veya eşkenar olduğunu
ekrana yazdırsın, geriye bir değer döndürmesin.

 */
void main(List<String> args) {
  //CEVAP1:
   int toplam=ciftToplam(7);
   print("toplam = $toplam");

  //CEVAP 2:
  double alan= daireAlani(5);
  print("Dairenin alanı =$alan ");  

  //CEVAP 3:
  ucgenCesidi(k1: 5,k3: 5,k2: 5);
  ucgenCesidi(k1: 3,k2: 4,k3: 5);
  ucgenCesidi(k1: 7,k2: 4,k3: 7);
}




//CEVAP 1:
int ciftToplam(int number){
  int toplam=0;

  for(int i=0; i<number;i++){
    if (i%2==0){
       toplam+=i;
    }
  
  }
  return toplam;
}
//CEVAP 2:
 double daireAlani(double yaricap,[double pi =3.14]){
  return pi*yaricap*yaricap;
 }

 //CEVAP 3:
 void ucgenCesidi({int k1=1 , int k2=1 , int k3=1}){
  if (k1==k2 && k1==k3){
    print("Bu bir eşkenar üçgendir.");
  }
  else if(k1==k2 || k1==k3 || k2==k3){
    print("Bu bir ikizkenar üçgendir.");
  }
  else{
    print("Bu bir çeşitkenar üçgendir.");
  }
 }