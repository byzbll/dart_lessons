/*
* List ikiye ayrılır
* 1-Sabit uzunluklu
* 2-Büyüyen listeler
*
*diğer dillerde dizi olarak bilinen yapılar dart dilinde sabit uzunluklu liste olarak kullanılır.
* List<int> numaralar = List.filled(10,0); //10 eleman içeren sabit uzunluklu liste yani dizi.
* Index numaraları 0'dan baslar yani listenin ilk elemanına erişmek için 0.indexine bakılır.
numaralar[0] diyerek..
*
 */

void main(List<String> args) {
  List<int> sayilar = List.filled(5, 2, growable: false);
  sayilar[0] = 4;
  sayilar[1] = 1;
  sayilar[2] = 9;

  print(sayilar);
  print(sayilar.length);
  print(sayilar[3]);

  List<String> isimler = List.filled(2, "");
  isimler[0] = 5.toString();
  //direkt 5 değerini atayamazsın.ancak stringe dönüştürüp atayabilirsin.
  isimler[1] = "beyza";
  print(isimler);

  List<dynamic> karisik = List<dynamic>.filled(5, 0);
  karisik[0] = "beyza";
  karisik[1] = 5;
  karisik[2] = false;
  print(karisik);

// liste elemanlarını gezmek(sırayla indexleri gezeceğiz)
  for (int i = 0; i < sayilar.length; i++) {
    // dizinin uzunluğu kadar i'yi arttıracağım.
    sayilar[i] += 5;
    print(sayilar[i]);
  }
  print("*********************");
  for (int oankiEleman in sayilar) {
    print(oankiEleman); // hatırlatma!!
  }
}
