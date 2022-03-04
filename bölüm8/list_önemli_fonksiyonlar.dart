void main(List<String> args) {
  Person emre = Person(3, "emre");
  Ogrenci hasan = Ogrenci(1, "hasan", 10);
  Person ayse = Ogrenci(8, "ayse", 8);
  var yunus = Person(6, "yunus");
  var ali = Ogrenci(7, "ali", 4);

  List<Person> tumOgrenciler = [emre, ayse, hasan, yunus, ali];

  tumOgrenciler.sort((ogr1, ogr2) {
    if (ogr1.id < ogr2.id) {
      return -1;
    } else if (ogr1.id > ogr2.id) {
      return 1;
    } else {
      return 0;
    }
  });

  var mapList = tumOgrenciler.map((Person e) => " ${e.isim}").toList();
  //sadece isim değerlerini almış oldum.
  // var olan veri kaynağını bambaşka bir yapıya dönüştürüyor.(Iterable türünde.)
  print(mapList); // artık indexli isteyebilirim.

  tumOgrenciler.add(yunus);
  tumOgrenciler.addAll([ayse, ali]);

  print(tumOgrenciler);

//higher order fonksiyon örnekleri.
  bool sonuc = tumOgrenciler.any((Person element) =>
      element.id > 10); //şartım id'si 10'dan büyük eleman var mı ?
  print(sonuc);

  Map<int, Person> yeniMap = tumOgrenciler.asMap();
  //var olan listeyi map yapısına dönüştürebilirsin.
  print(yeniMap[0]!.id);
// her bir elemana sırasıyla index atıyor ve karşısına da değerini yazıyor.

  print(tumOgrenciler.contains(emre)); //true veya false değer verecek.
  //bellek adreslerini kontrol ediyordu.

  print(tumOgrenciler.contains(Person(3, "emre")));
  // hata verir çünkü yeni bir liste oluşturmuşsun gibi olur.Ancak benim listemde böyle bir yapı yok.

  bool sonucEvery = tumOgrenciler.every((element) => element.isim.length > 0);
  print(sonucEvery);

  var bulunan = tumOgrenciler.firstWhere((element) => element.id == 1);
  print(bulunan);
//id'si 1 olan ilk gördüğü elemanı verecek.

  var liste1 = List<Ogrenci>.filled(5, Ogrenci(0, "", 0));
  var listeFrom = List<Person>.from(tumOgrenciler);
/*
var listeFrom = List<Ogrenci>.from(tumOgrenciler.whereType<Ogrenci>()); de diyebilirsin.
*/

  //bana Iterable türünde bir şeyler ver.
  //Iterable:elemanları art arda okunabilen yapılardır.(liste ve setler vb.)
  var listeOf = List<Ogrenci>.of(tumOgrenciler.whereType<Ogrenci>());
  //type'ı ogrenci olanlarla bana yeni bir liste olustur.

// eger ogrencileri tutan yeni bir liste olusturmak istiyorsan "of" yapısıyla tumOgrenciler içindeki yapıların hepsinin Ogrenci olması gerekir."from" da ise buna bakmıyor.

//  var listGenerate = List<int>.generate(5, (index) => index + 2);
// generate ve filled farkı generate'de her elemana müdahele edebilmen.

  var listGenerate = List<Ogrenci>.generate(
      5, (index) => Ogrenci(index, " $index", index * 2));

  print(listGenerate);

  print(listeOf);
  print(listeFrom);

  var degistirilemezListe = List.unmodifiable([0, 1, 2]);
  // degistirilemezListe.add(5); =>diyemezsin.çünkü değiştirilemez liste oluşturdun.
  print(degistirilemezListe.reversed);
}

class Person {
  int id = 0;
  String isim = "";

  Person(this.id, this.isim); //constructor yapısı.nesne üretmeni sağlardı.
  @override //yaparak ezebiliyorduk.
  String toString() {
    return "id:$id ve isim:$isim\n";
  }
}

class Ogrenci extends Person {
  int alinanDersSayisi = 0;
  Ogrenci(id, isim, alinanDersSayisi) : super(id, isim);
  @override
  String toString() {
    return "id:$id ve isim:$isim ve alinan ders sayısı:$alinanDersSayisi\n";
  }
}
//methodlara nesneler üzerinden erişmemiz gerekir.
