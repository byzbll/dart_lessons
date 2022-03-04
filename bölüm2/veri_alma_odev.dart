/*
* ÖRNEK 1 : İki notu girilen öğrencinin ortalamasını bularak sonucu ekranda gösteren algoritmayı yapınız.
* ÖRNEK 2 : Fiyatı girilen ürüne %18 kdv ekleyerek son fiyatı hesaplayan algoritmayı yazın.
 */

import 'dart:io';

void main(List<String> args) {
  // SORU 1 (EMRE HOCANIN ÇÖZÜMÜ)
  print("birinci notunuzu giriniz");
  int? birinciNot = int.parse(stdin.readLineSync()!);

  print("ikinci notunuzu giriniz");
  int? ikinciNot = int.parse(stdin.readLineSync()!);

  double sonuc = (birinciNot + ikinciNot) / 2;
  print("ortalamanız $sonuc'dur");

  // SORU 2
  print("ürünün fiyatını giriniz");
  double? fiyat = double.parse(stdin.readLineSync()!);
  fiyat = fiyat + (fiyat * (18 / 100));
  print("son fiyat $fiyat'dır");

  // EMRE HOCANIN ÇÖZÜMÜ
  print("fiyat giriniz");
  int fiyat1 = int.parse(stdin.readLineSync()!);
  double sonFiyat = (fiyat1 * 18) / 100 + fiyat1;
  print("son fiyat $sonFiyat'dır");
}
