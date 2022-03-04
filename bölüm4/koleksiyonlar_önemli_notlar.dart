void main(List<String> args) {
  var Listem = <String>[];
  // veri türleri dynamic olan bir liste tanımlanmış.
  // veri türleri string olan bir liste tanımlanmış.
  var myMap = <String, dynamic>{'yas': 34};
  var mySet = <String>{'emre', 'hasan'};
  // eğer içi boş olursa map olur. eğer içine bir şey yazarsan set olur.
  // dart dilinde set ve map'lerde süslü parantez , listelerde köşeli parantez kullanılır.

  var tekSayilar = [1, 3, 5];
  var ciftSayilar = [2, 4, 6];

  // spreads operator
  var sonListe = [...ciftSayilar, ...tekSayilar]; // boş olarak tanımladım.
  // eklemek istediğim listenin başına (...) koymalısın.

  /* sonListe.addAll(tekSayilar);
  sonListe.addAll(ciftSyilar);*/

  var map1 = {'ad': 'soyad'};
  var map2 = {'yas': 34};
  var sonMap = {...map1, ...map2};

  var set1 = {'beyza'};
  var set2 = {'zeynep'};
  var set3 = {'melek'};
  var set4 = {'beyza'};
  //setler birden fazla elemanı bir kere yazdırıyordu.
  var sonSetYapisi = {...set1, ...set2, ...set3, ...set4};

  print(sonSetYapisi);
  print(sonListe);
  print(sonMap);
}
