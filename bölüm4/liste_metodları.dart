void main(List<String> args) {
  List<int> sayilar = [10, 5, 4, 3, 11, 9, 15];
  if (sayilar.isNotEmpty) {
    print(sayilar.first);
    print(sayilar.last);
  }

  print(" boş mu :" + sayilar.isEmpty.toString()); // boş ise true döndürecek.
  print("eleman sayısı: ${sayilar.length}");
  print("ters sırada : ${sayilar.reversed} ");
  sayilar.add(23);
  print(sayilar); // ana yapı bozulmaz tanımladığım şekilde yazdırır.

  sayilar.remove(3); // verilen elemanı siler.

  sayilar.removeAt(1); // verilen indexteki elemanı siler.
  print(sayilar);
  //  sayilar.clear();
  if (sayilar.contains(9)) {
    print("listede 9 var");
  } else {
    print("listede 9 yok");
  }

  print(sayilar.elementAt(2)); // 2. indexteki elemanı ver.
  print(sayilar.indexOf(11)); // 11 elemanının indexini ver.
  sayilar.shuffle();
  print(sayilar);
}
