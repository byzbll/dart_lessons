/*
SORU 1 : CemberDaire isimli sınıf olusturun.Bu sınıfın yarıçap alan kurucusu olmalı. Ayrıca cevre ve alanını hesaplayan metotlar olmalı.(Pi sayısı 3,14 alın) 

SORU 2 : Ogrenci isimli sınıf oluşturun. Bu sınıfta ögrencinin id'si ve not degeri tutulmalı. 100 elemanlı bir listede id ve not degerlerini rastgele olusturarak bu ogrencileri saklayın ve bu ogrencileri yazdıran metodu yazın.*/

import 'ödevler/cember_daire.dart'; // kodlar artık buradaymış gibi.

void main(List<String> args) {
  CemberDaire c1 = CemberDaire(-5);
  print("çevre : ${c1.cevreHesapla()}");
  print("alan : ${c1.alanHesapla()} ");
}
