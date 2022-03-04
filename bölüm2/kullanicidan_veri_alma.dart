import 'dart:io'; // komutun çalışması için böyle bir kütüphane eklenmeli.

void main(List<String> args) {
  print("adınızı giriniz");
  String? isim = stdin.readLineSync(); // adımı girmemi bekleyecek olan komut.
  // soru işaretini koymamızın sebebi kullanıcı bize null değer girebilir.
  print("girilen isim $isim");

  print("yaşınızı giriniz");
  int? yas = int.parse(stdin.readLineSync()!);
  yas = yas + 5;
  print("girilen yaş $yas ");
}
