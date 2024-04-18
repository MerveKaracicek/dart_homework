void main(List<String> args) {
  /**
 * SORU 1 : 3 tane double değişken olusturup bunların ortalamasını yazdıran programı yazınız
 * SORU 2 : Kenarlarını girdiğiniz üçgenin çeşidini yazdıran programı yazınız.
 * SORU 3 : Vize ve final notlarını alıp dersi geçip geçmediğini bulan programı yazınız
 * (geçme notu alt değeri = 50, vizenin %40 finalin %60ı alınır.)
 * 
 * SORU 4: Kendi adınızı ekrana 5 kere yazdıran uygulamayı tüm döngü ifadeleriyle yazınız.
 * SORU 5: 1'den 100'e kadar olan ve 15 ile tam bölünen sayıların karelerini ekrana yazdırınız. 
 * SORU 6: Tanımlanan int bir sayının faktoriyelini bulan uygulamayı yazınız.
 */

//CEVAP 1:
double num1=15;
double num2=14;
double num3=12;
var ortalama=(num3+num2+num1)/3;
print("Ortalama= $ortalama");


//CEVAP 2:
int kenar1=15, kenar2=12 ,kenar3=15;

if(kenar3==kenar2 && kenar2==kenar1 && kenar3==kenar1){
  print("Eşkenar Üçgen");
}
else if (kenar3==kenar2 || kenar2==kenar1 || kenar3==kenar1){
  print("İkizkenar Üçgen");
}
else{
  print("Çeşitkenar Üçgen");
}
//CEVAP 3:
 int vize=40 , finall=50;
 var not=((vize*40)/100) + (finall*60)/100 ;
if(not>=50){
  print("Dersi geçtin , ortalaman=$not");
}
else{
  print("Dersten kaldın , ortalaman=$not");
}

//CEVAP 4 :
for (int i=0;i<5;i++){
  print("Merve Karaçiçek for");
}

int sayac=0;
while(sayac<5){
  print("Merve Karaçiçek while");
  sayac++;
}
int sayacc=0;
do{
  print("Merve Karaçiçek dowhile");
  sayacc++;
}
while(sayacc<5);

//CEVAP 5:
for(int i=0; i<=100;i++){
  if(i%15==0){
    print("${i*i}");
  }
}

//CEVAP 6:
int number=5;
int faktoriyel=1;
for(int i=1;i<=number;i++){
   faktoriyel*=i;
}
print("Faktöriyel=$faktoriyel");
}