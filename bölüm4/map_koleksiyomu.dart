/*
* Map yapısı da set gibi sırasız bir şekilde elemanları saklayan bir koleksiyon öğesidir.
* Bu yapıyı lstelerden ve setten ayıran özellik ise elemanları key-value olarak saklamasıdır.
* Herhangi bir veri türü kullanılabilir ama burada önemli olan key değerlerin unique yani eşsizolması gerekmektedir.
*
* Map yapısını sözlüğe benzetebiliriz. Tıpkı sözlük gibi birbirinden farklı elemanları içerir.
* Sabit uzunlukta değildir, dinamik uzunluğa sahiptir.
 */

void main(List<String> args) {
  Map<String, int> alanKodlari = {"ankara": 312, "bursa": 224, "istanbul": 212};
  print(alanKodlari);
  print(alanKodlari["bursa"]); // direkt bursanın kodu için.

  Map<String, dynamic> emre = {
    "soyad": "altunbilek", // key - value
    "yas": 34,
    "bekarMi": true
  };

  print(emre['yas']);

  Map<String, dynamic> deneme = Map(); // içi boş mapler oluşturdum.
  Map<String, dynamic> deneme2 = {}; // içi boş mapler oluşturdum.

  deneme2['yas'] = 55;

  for (String oankiAnahtar in emre.keys) {
    // emre mapindeki keyleri gez.
    //print(emre[oankiAnahtar]);
    print(oankiAnahtar);
  }
  for (dynamic deger in emre.values) {
    print(deger); //sadece değerleri yazdırır.

  }
  for (var element in emre.entries) {
    // ikisini birden gezmek istediğimizde.
    print("key : ${element.key} değeri : ${element.value} ");
  }

  if (emre.containsKey("yas")) {
    // yas adlı key var mı?
    print("bulunan yaş değeri ${emre['yas']}");
  }
}
