/*
* Bir diğer koleksiyon yapısı da set yapısıdır.
* List den en önemli farklı elemanları sıralı olarak tutmaz,bu durumda list'lerde olduğu gibi indexleri kullanamayız.
* Bir diğer farkı ise bir elemandan sadece bir tane olur yani her bir eleman birbirinden farklıdır.
*
* index olmadan elemanları kontrol etmek için contains methodu kullanılabilir. onun dışında listelerdeki methodlar set için de geçerlidir.
*
 */

void main(List<String> args) {
  Set<String> isimler = Set(); // var isimler ' de yazılabilir.
  isimler.add('beyza');
  isimler.add('zeynep');
  isimler.add('melek');
  isimler.add('beyza');
  isimler.add('beyza');
  isimler.add('hatice');

  bool sonuc = isimler.remove("beyza");
  print("sonuc : $sonuc");
  // beyza set de olduğu için çıkarabildim ve bu yüzden true döndürdü.

  for (String s1 in isimler) {
    // for kısa yol( anlamı isimleri gez ve her bir elemanda okuduğun değeri s1'e ata)
    print("isim : $s1 ");
  }
  // beyza 3 kere geçmesine rağmen tek bir tane çıktı verdi.eğer liste kullansaydım üçünü de yazdıracaktı.
  // setlerde sırası önemsenmez bu yüzden indexler kullanılmaz.

  Set<int> numaralar = Set.from([1, 2, 3, 6, 5, 6, 8]);
  List<int> ciftSayilar = [0, 2, 4, 6, 8, 10, 8, 6, 4, 2];
  for (int s1 in numaralar) {
    print(" no  : $s1 ");
  }
  numaralar.clear();
  // önce var olan setdeki elemanları sileceğimki sadece ciftSayilar kısmını göreyim.
  numaralar.addAll(ciftSayilar);
  for (int s1 in numaralar) {
    print(" add all'dan sonra : $s1 ");
  }
}
