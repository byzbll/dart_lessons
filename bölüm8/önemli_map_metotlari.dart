import 'dart:web_gl';

void main(List<String> args) {
  Map<String, dynamic> map = Map(); //soyut bir sınıf.
  Map<String, dynamic> map1 = {};
  var map3 = <String, dynamic>{};

  map["id"] = 5;
  map["isim"] = "emre";
  map["renk"] = "yeşil";

  var yeniMap = Map.from({'deger': ' yeni'});
  var mapFromEntries = Map.fromEntries(map.entries);
  print(mapFromEntries);

  var liste = [1, 2, 3, 4];
  var mapFromIterable = Map<String, String>.fromIterable(liste,
      key: (item) {
        return " $item";
      },
      value: (item) => " ${item * 2}"); // key ve value müdahale ettim.
  print(mapFromIterable); //key ve value'lara aynı değeri atadı.

  //bir Iterable'dan map yapısı oluşturmak.

  map.update('id', (value) => value * 3);

  map.update('id_yeni ', (value) => value * 3, ifAbsent: () => 100);
  // id_yeni diye bir alan yoksa ifAbsent çalışacak.

  map.putIfAbsent("soyisim", () => "altunbilek");
  //eğer yoksa böyle bir alan oluştur.
  print(map);
}
// constructorlar bir sınıftan nesne üretmeye yarıyordu.
//key + value = entries deniyordu.