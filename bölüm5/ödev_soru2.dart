import 'dart:math';

import 'ödevler/ogrenci.dart';

void main(List<String> args) {
  Ogrenci ogr1 = Ogrenci(id: 5, notDegeri: 10);
// neyi tutacağına dikkat et

  List<Ogrenci> tumOgrenciler = List.filled(100, Ogrenci());
// bir fonksiyon yazalım ve bu listenin içini doldursun.
  ogrenciListesiniDoldur(tumOgrenciler);
  //benim listemin her bir elemanı öğrenci idi.
  for (Ogrenci oankiOgrenci in tumOgrenciler) {
    /* print(oankiOgrenci.id);
    print(oankiOgrenci.notDegeri);*/
    print(oankiOgrenci);
  }

  print("tüm öğrencilerin ortalaması" +
      ogrencilerinOrtalamasiniHesapla(tumOgrenciler).toString());
}

void ogrenciListesiniDoldur(List<Ogrenci> liste) {
  for (int i = 0; i < liste.length; i++) {
    liste[i] =
        Ogrenci(id: Random().nextInt(1000), notDegeri: Random().nextInt(1000));
  }
}
// main ve fonksiyonum ayrı bir dünya.Bu dünyalar arasında iletişim kurabilmek için parametreleri kullanıyoruz.

double ogrencilerinOrtalamasiniHesapla(List<Ogrenci> liste) {
  int toplam = 0;
  for (Ogrenci oankiOgrenci in liste) {
    toplam = toplam + oankiOgrenci.notDegeri;
  }
  return toplam / liste.length;
}

// flutterda genellikle başka bir sınıf tutan listelerle çalışacağız.