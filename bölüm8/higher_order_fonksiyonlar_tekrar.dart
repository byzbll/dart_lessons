import 'higher_order_fonksiyonlar.dart';

void main(List<String> args) {
  List<int> liste = [1, 2, 3];
  /* liste.forEach((element) {
    print("element : $element");
  });*/
// başka bir yazım olarak;
  liste.forEach(
      callBack); // forEach her çalıştığında bu fonksiyonu tetikleyecek.
  kendiForEachYapim(liste, (int deger, int index) {
    print("değer : $deger ve index : $index");
  });
}

void kendiForEachYapim(List<int> liste, Function callBack) {
  for (int i = 0; i < liste.length; i++) {
    // print("Eleman : ${liste[i]}");(ekrana yazdırma işini direkt yaptırmayacağım.)
    callBack(liste[i], i);
  }
}

void callBack(int element) {
  print("element : $element");
// isimlendirilmemiş fonksiyonu isimlendirdim.
}
