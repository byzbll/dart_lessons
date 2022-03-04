void main(List<String> args) {
  for (int i = 0; i < 10; i++) {
    print("beyza bal");
    if (i % 2 == 0) {
      print("$i");
    }
  }
  List isimListesi = ["emre", "hasan", "ali"];
  for (String gecici in isimListesi) {
    print("$gecici");
  }
  for (int i = 0; i < isimListesi.length; i++) {
    print("okunan eleman" + isimListesi[i]);
  }
  int sayac = 0;
  while (sayac < 3) {
    print("okunan sayaç değeri  $sayac");
    sayac++;
  }

  int sayac2 = 0;

  do {
    print("okunan sayaç değeri :  $sayac2");
    sayac2++;
  } while (sayac2 < 5);

  for (int i = 0; i < 10; i++) {
    if (i > 5) {
      break;
    }
    print("i değeri: $i");
  }
  for (int i = 0; i < 10; i++) {
    if (i > 5) {
      print(" continue i değeri: $i");
    } else {
      print("i değeri 5'ten küçük olduğu için herhangi bir işlem yapılmayacak");
      continue;
    }
  }
  distakiDongu:
  for (int i = 1; i < 4; i++) {
    for (int j = 1; j < 4; j++) {
      print("$i * $j = ${i * j}");
      if (i == 2) {
        continue distakiDongu;
      }
    }
  }
}
/*
Tekrar eden işlemler için döngülerden faydalanırız.3 temel döngü çeşidi vardır,yapılan işlemler aynı olsada kullanım amaçları farklılık gösterir.

for : genellikle tekrar sayısı bilinen durumlarda kullanılır.yazım yöntemi şu şekildedir:
  for(dongude_kullanilacak_kontrol_degişkeninin_başlangic_degeri ; dongunun_bitme_sarti; her_dongu_sonunda_yapilacak_islem)
  for(i=0; i<10; i++)
  ayrıca gelişmiş for döngüsüile de bir dizi veya listenin tüm elemanları okunabilir.  
  for(String isim in isimlerListesi){
    print(isim);
    }

    while : bir koşul doğru olduğu sürece yapılacak işlemler için kullanılan dögü çeşididir.
      while(sayac<10){
        yapılacak işlem;
        sayac ++;
        }

  do-whıle : kosul sağlansın veya sağlanmasın bir kere çalıştırılır ve sonra şart kontrol edilir.  
  do{
    print("emre ");
    i++
  } while(i<10);

  Döngü kullanımlarında break ve continue anahtar kelimelerini kullanacağımız durumlar olabilir.kısaca break = çalışan döngüden çıkılmasını 
  continue = döngü çalışırken belli bir durumda tekrar basa  dönmesini sağlar.  

  Döngülerde label yani etiketler kullanılabilir.böyleece birden fazla döngüyü bu etiketler ile kolayca kontrol edebiliriz. 
  etiketler ile beraber break ve continue kelimeleri kullanılabilit.abstract
  label : for(...){
    break label;
    }
   */ 
