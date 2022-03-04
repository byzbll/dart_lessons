// Nesneye yönelimli programlamaya giriş
/*
* SINIF : kendi veri türlerimiz veya soyut olan taslaklara denir.Kendi içinde değişkenlere ve methodlara sahiptir.
* Istediğimiz bir nesnenin veya varlığın bilgisayar dillerinde tanımıdır.
*
* NESNE : olusturulan soyut ve taslak olan sınıflardan üretilen örneklere denir.
* Nesnelere sınıfın sahip olduğu değerlere ulaşmak için kullandığımız referanslardır diyebiliriz.
*
* Sınıf eğer bir uzaktan kumandalı araba ise nesne onu kontrol ettiğimiz kumandadır.
 */

// Kendi veri türümüzü hazırlayacaksak sınıfları kullanacağız.
// Sınıf adları büyük harfle başlamalı.
void main(List<String> args) {
  Ogrenci beyza = Ogrenci();
  beyza.ogrAd = "beyza";
  beyza.ogrNo = 292;
  beyza.aktifMi = true;

  Ogrenci hasan = Ogrenci(); // hafızada iki farklı alan ayrıldı.

  var kemal = Ogrenci(); // var da kullanabilirsin.
}

class Ogrenci {
  // null değer atanabileceğinden ya ilk tanım yapmalısın ya da "?" koymalısın.
  // buradaki değerlere "instance variables" denir.
  int ogrNo = 1;
  String ogrAd = "";
  bool aktifMi = true;
  // değişken tanımlayabildiğin gibi fonksiyonda tanımlayabilirsin.
  // sınıf içinde tanımladığın fonksiyonlara method da denir.
  void dersCalis() {
    print("öğrenci ders çalışıyor");
  }
  // NOT : sınıfdan sonra direkt süslü parantez gelir.
  // Yani sınıf nesnelerin durumları ile ilgili işlemleri ve özellikleri tanımlar.
  // Ortak özelliklere sahip nesnelere ait veri ve yordamlar bir sınıfın içinde toplanır. Bu sınıf yapısı kullanılarak programın içinde nesneler tanımlanır.
}
