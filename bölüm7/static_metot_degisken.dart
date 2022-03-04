/*
Sınıflarımızda nesne üretmeden bazı değişkenlere ve methodlara erişmek isteyebiliriz.Burada karsımıza static kavramı cıkar.
* Static kullanarak nesne değil sınıf değişkenleri ve methodları oluşturabiliriz.
* Bir sınıfta tanımlanan method ve değişkenlere erişirken mutlaka nesne üretmemiz gerekirdi. Ama biz bunları static olarak  tanımlarsak artık nesne üretmeden bu değerlere erişebilir ve kullanabiliriz.Artık onlar nesnelerin değil sınıfın method ve değişkenleridir.
*
* Ayrıca static değişkenler kullanılana kadar değer almazlar,bellekte yer ayrılmaz.
* Static methodların içinde this this anahtar kelimesi kullanılmaz.
*
* Static methodlar içinden nesneye özgü olanlara erişilemezken, nesneye özgü method içinden static değerlere erişilebilir.
 */

void main(List<String> args) {
  Matematik m1 = Matematik(50, 20);
  m1.topla();
  m1.cikar();

  Matematik m2 = Matematik(30, 10);
  m2.topla();
  m2.cikar();

//nesne üretmeme gerek yok
  print(Matematik.PI);
  Matematik.sinifAdiniSoyle();

  print("toplam işlem sayısı ${Matematik.toplamIslemSayisi}");
}

class Matematik {
// buradaki değişkenlere "instance variable"deniliyordu.
//"instance variable"(nesne değişkeni) kullanmak için mutlaka nesne üretmem gerekiyor.
  int birinciSayi;
  int ikinciSayi;
  static int toplamIslemSayisi = 0; //her bir nesnede sıfırlanmayacak artık.
  //"class variable"(sınıf değişkeni)
  static double PI = 3.14; //direkt bu değere ulaşmak istiyorsam.
  static void sinifAdiniSoyle() {
    print("ben matematik sınıfıyım");
  }
  //instance variable statik içinden erişilemez.

  Matematik(this.birinciSayi, this.ikinciSayi);

  void topla() {
    //nesneye bağlı şeyler içinde static fonksiyona erişilebilir.
    toplamIslemSayisi++;
    print("toplam = ${birinciSayi + ikinciSayi}");
  }

  void cikar() {
    toplamIslemSayisi++;
    print("fark = ${birinciSayi - ikinciSayi}");
  }
}
