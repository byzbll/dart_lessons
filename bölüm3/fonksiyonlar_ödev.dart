/*
SORU 1: parametre olarak bir tane int sayı alan fonksiyon yazınız.
Bu fonksiyon aldığı değere kadar olan çift sayıların toplamını geriye döndürsün..

SORU 2: daire alanını hesaplayan fonksiyonu yazınız.PI sayısı opsiyonel olmalı.
Eğer PI sayısı verilmediyse varsayılan olarak 3,14 olarak hesaplama yapın.

SORU 3: bir üçgenin kenarlarını isimlendirilmiş parametre olarak alan fonksiyon yazınız.Bu fonksiyon kenar değerlerine göre bu üçgenin çeşit kenar ikiz kenar veya eşkenar olduğunu ekrana yazdırsın, geriye bir değer döndürmesin.
 */
void main(List<String> args) {
  int toplam = ciftFonksiyon(9);
  print("toplam $toplam");
}

int ciftFonksiyon(int sayi1) {
  if (sayi1 % 2 == 0) {
    return sayi1;
  } else {
    return 0;
  }
}
