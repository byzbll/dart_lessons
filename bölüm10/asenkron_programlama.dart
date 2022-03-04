import 'dart:io';

void main(List<String> args) {
  print("anne cocugu ekmek almaya yollar");

  uzunSurenIslem();
  print("peynır zeytin hazırlanır");
  print("kahvaltı hazır!");
}

//senkron yapısı
void uzunSurenIslem() {
  print("cocuk ekmek almak için evden cıkar");
  //sleep(Duration(seconds: 10));
  //10 saniye sürecek işlem.
  Future.delayed(Duration(seconds: 10), () {
    print("cocuk ekmekle eve girer"); //10 saniye sonra olacak durum.
  });
}
