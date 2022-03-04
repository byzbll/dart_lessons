/*
* Higher order functions : bir fonksiyonu parametre olarak alan veya geriye fonksiyon döndüren fonksiyonlardır.
* tabi ikisi aynı anda da yapılabilir.
 */
// forEach'in amacı bir listenin elemanlarını tek tek gezip ekrana yazdırmaktır.

void main(List<String> args) {
  List<int> liste = [1, 2, 3];
  /* liste.forEach((element) {
    print("element $element");
    //listeyi okur.(for each başka bir fonksiyonu parametre olarak aldı)
  });*/

  liste.forEach(callBack);
// for each bizden parametre olarak geriye herhangi bir değer döndürmeyen int bir değer alan başka bir fonksiyon bekliyor.
//callBack'i çağırmayacağım sadece ifadeyi yollayacağım.
  kendiForEachYapim(liste, (int deger, int index) {
    print("deger: $deger ve index: $index");
  });
}

void kendiForEachYapim(List<int> liste, Function callBack) {
  for (int i = 0; i < liste.length; i++) {
//    print("eleman : ${liste[i]}");
// ekrana direkt yazdırmaktansa:

    callBack(liste[i], i); //çağırdım.
  }
}

void callBack(int element) {
  print("element $element");
}
