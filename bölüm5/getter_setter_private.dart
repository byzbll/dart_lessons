/*
* Private değişken ve fonksiyonlar : Bir sınıftaki değişken ve metotları bazen erişime kapatmak isteyebiliriz.Bu durumlarda _ işareti ile bunları saklarız.
*
* getter metotları: sınıf değişkenleriniokumak için kullanılan özel fonksiyonlardır.
* bu metoların amacı özellikle private yani dış dünyanın erişimine kapatılmış değişkenlerin gerekli olduğunda okunmasını sağlamaktır.
*
 setter metotları: sınıf değişkenlerine veri atamak için kullanılır.Bu metotların amacı özellikle private yani dış dünyanın erişimine kapatılan değişkenlere veri atamaktır,ayrıca veri ataması yapılırken gerekli olan kontrollerin ve işlemlerin yapılması için kullanılır.
 */

import 'musteri.dart';
import 'veritabani_islemleri.dart';

void main(List<String> args) {
  Musteri m1 = Musteri(952);
  m1.bilgileriYazdir();
  m1.musteriNoAta = 952; // setter yapısı
  //normalde fonksiyon olsaydı parantez açardık ancak setterlarda direk atama...
  print(m1.musteriNoSoyle); // getter yapısı

  VeriTabaniIslemleri db = VeriTabaniIslemleri(); //import library.
  //db adında bir nesne oluşturdu.
  // amacımız veri tabanına başarılı bir şekilde bağlanmak.

  VeriTabaniIslemleri db2 =
      VeriTabaniIslemleri.loginWithNameandPassword("emre2", "123");

  bool sonuc = db.baglan();
  if (sonuc) {
    print("bağlandı");
  } else {
    print("bağlanamadı");
  }
}



  // genelde bir sınıf oluşturuyorsak bunun çok fazla kodu olur ve başka bir dosyada saklarız.
  // eğer tanımlı sınıf yapısı ile kullandığın main yapısı aynı dosya içerisinde ise private alanlar çalışmaz.

