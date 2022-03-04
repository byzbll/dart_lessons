import 'asenkron_programlama.dart';

void main(List<String> args) {
  print("anne cocugu ekmek almaya yollar");
  print("Cocuk ekmek almak için evden çıkar");
  Future<String> sonuc = uzunSurenIslem();
  sonuc.then((String value) => print(value)).catchError((hata) {
    print(hata);
  }).whenComplete(() =>
      print("ekmek alma operasyonu bitti")); //burası mutlaka çalışacaktır.

  // print(sonuc);
  print("peynir zeytin hazırlanır");
  print("kahvaltı hazır!");
}

Future<String> uzunSurenIslem() {
  //bu fonsiyonun size string döndürme ihtimali var.
  Future<String> sonuc = Future.delayed(Duration(seconds: 2), () {
    // return "Çocuk ekmekle eve girer";
    //gelecekte return ifadesi olacak şuan yok.Ancak sistem anı düşünüyor.
    throw ("bakkalda ekmek kalmadı");
  });

  return sonuc;
}
//kurucu metotlar ilgili sınıftan nesne verirdi.
//herhangi bir return ifadesi yok var olan 2 saniye sonra çalışacak. 