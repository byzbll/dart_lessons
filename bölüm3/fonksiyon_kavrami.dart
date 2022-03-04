/*
Fonksiyon kavramı sayesinde problemlerimizi küçük alt problemlere parçalayarak çok daha okunaklı,hata bulması kolay uygulamalar geliştirebiliriz.

Bir uygulama geliştiriken,bir problemi çözerken o problemde belli bir işi yapan kodları methodlara bölmemiz gerekir.
Bunun için method veya fonksiyon oluşturabiliriz.

Methodlar parametre alabilir veya herhangi bir parametreye sahip olmayabilir.
Methodlar geriye bir değer döndürebilir.Değer döndürmeyen method tanımlarının başına 'void' yazılır.
Dart dilinde return ve method geri döndürme veri tipi değeri opsiyoneldir,yani belirtmek zorunda değiliz.(Belirtilmesi önerilir)
 */

void main(List<String> args) {
  cevreyiHesapla();
  int sonuc = alanHesapla(5, 10);
  print("alan : $sonuc");
  // mainden aşağıya bilgi aktarmak istiyorum.iki dünya arasında iletişim kurmak için kullandığımız yapılara "parametre" diyoruz.ve parametreleri parantezlerin içine yazıyoruz.

  int hacim = hacimHesapla(4, 5, 6);
  print("hacim: $hacim");
  print(hacimHesapla(4, 5, 6)); //kısa yol
}

// parametresiz fonksiyon
void cevreyiHesapla() {
  // geriye bir şey döndürmediği için başına void yazdık.
  // Burada fonksiyonun tanımı var.çalıştırabilmem için main fonksiyonu içerisinde çağırmam gerekecek.
  int en = 5, boy = 10;
  int cevre = (en + boy) * 2;
  print("çevre $cevre");
}

// parametre alan fonksiyon
int alanHesapla(int sayi1, int sayi2) {
  //geriye int bir değer döndürdüğü için başına int yazdık
  // sayi1=5,sayi2=10'u temsil eder.
  //int alan = sayi1 * sayi2;
  //print("alan $alan");
  // veya print("alan ${sayi1*sayi2} ");
  // sayi1 ve sayi2 sadece süslü parantezler içerisinde geçerlidir.
  return sayi1 * sayi2;
}

int hacimHesapla(int en, int boy, int yukseklik) {
  return en * boy * yukseklik;
}
