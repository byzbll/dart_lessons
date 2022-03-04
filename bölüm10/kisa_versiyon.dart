import 'asenkron_programlama.dart';

void main(List<String> args) {
  print("anne çocuğu ekmek almaya yollar");
  print("çocuk ekmek almak için evden çıkar");
  uzunSurenIslem()
      .then((value) => print(value))
      .catchError((hata) => print(hata))
      .whenComplete(() => print("ekmek alma operasyonu bitti"));
  print("peynir zeytin hazırlanır");
  print("kahvaltı hazır!");
}

Future<String> uzunSurenIslem() {
  //öncelikle uzun süren işlem geriye future string ifade döndürecek.
  return Future<String>.delayed(Duration(seconds: 2), () {
    return "çocuk ekmekle eve girer";
  });
}
