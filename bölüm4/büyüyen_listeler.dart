/*
* Dinamik olarak büyüyen küçülen koleksiyonlarımız varsa sabit uzunluklu listeler yerine buyuyen listeleri kullanırız.
* Bu listelere varsayılan olarak boyut vermemiz gerekmez.
* Tanımlanması sabit uzunluklu dizilere benzer sadece burada listenin boyutunu belirtmeliyiz.
* add eleman ekler,
* clear tüm elemanları siler,
* remove verilen elemanı siler,
* removeAt belirtilen indexteki elemanı siler.
* Ayrıca [] kullanarak belli bir indexteki elemanı güncelleyebiliriz.
 */

void main(List<String> args) {
  List<int?> sayilar = []; //programın akışı boyunca değisebilir.
  // listede null olabilecek int'ler var.
  sayilar.add(1);
  sayilar.add(2);
  sayilar.add(3);
  sayilar.add(4);
  print(sayilar);
  print(sayilar.length); //dizinin uzunluğunu söyleyecek.
  sayilar.length = 100;
  print(sayilar);
  //hata verir çünkü diğerleri varsayılan olarak null değeri alacak.(? ile düzelttik)

  List<int> sayilar2 = [1, 2, 3];
  sayilar2.add(55);
  print(sayilar2);

  List<int> sayilar3 = List.filled(10, 10, growable: true);
  sayilar3.add(55); //bu değeri en sondaki elemana verir
  print(sayilar3);
  print(sayilar3.length);

  List<int> sayilar4 = List.empty(growable: true);
  List<int> sayilar5 = [];
  // ikiside büyümeye hazır boş listeler sunar.
  sayilar5.add(10);
  sayilar4.add(70);
  print(sayilar5);
  print(sayilar4);
}
