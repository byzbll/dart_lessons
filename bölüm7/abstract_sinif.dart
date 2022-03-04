/*
* Abstract soyut sınıf: Sınıflar arasında soyutlama yapmak için kullanılır.
* Abstract sınıflardan nesne üretilemez , abstract sınıflarda normal ve abstract methodlar olur 
* abstract methodlar alt sınıflarca override edilmek zorundadır.

* Bir sınıfta bir tane abstract method varsa o sınıf mutlaka abstract tanımlanmalıdır.
 */
void main(List<String> args) {
  /*Sekil s1 = Sekil();
  s1.cevreHesapla();*/
// böyle diyemem çünkü şeklin ne olduğu belli değil.

  Sekil s1 = Kare(4); //karşısına sekil diyemezsin.
  print(s1.alanHesapla());
  print(s1.cevreHesapla());
  //double değerler döndürdüklerinden print içinde yazdır.

  s1.selamla();

  Sekil s2 = Dikdortgen(4, 6);
  print(s2.alanHesapla());
  print(s2.cevreHesapla());
  s2.selamla();

  List<Kare> tumKareler = [];
  List<Dikdortgen> tumDikdortgenler = [];
  List<Sekil> tumsekiller = [];
  tumsekiller.add(s1);
  tumsekiller.add(s2);

  test(s1);
  test(s2);
}
//soyut sınıflarda tanımladığınız methodların içeriğini yazamazsınız.

void test(Sekil sekil) {
  sekil.selamla();
}
//tek bir fonksiyon iki farklı yapıyı işleme sokabiliyor.

abstract class Sekil {
  // bunu oluşturmamın sebebi kare... ortak fonksiyonlarını tek bir yerde toplamak.
  //şekil sınıfı aşırı soyut aşırı genel.
  double alanHesapla();
  double cevreHesapla();
  void selamla() {
    print("ben şekil sınıfındanım");
  }
//gövdesi dolu olan fonksiyonda yazılabilir.en az bir tane gövdesi olmayan fonksiyon yazılması yeterli.

}

class Kare extends Sekil {
  int kenar;
  Kare(this.kenar);

  @override
  double alanHesapla() {
    return kenar * kenar.toDouble();
  }

  @override
  double cevreHesapla() {
    return kenar * 4.toDouble();
  }

  @override
  void selamla() {
    print("ben kare sınıfındanım");
  }
}

class Dikdortgen extends Sekil {
  int kisaKenar;
  int uzunKenar;

  Dikdortgen(this.kisaKenar, this.uzunKenar);

  @override
  double alanHesapla() {
    return kisaKenar * uzunKenar.toDouble();
  }

  @override
  double cevreHesapla() {
    return 2 * kisaKenar + 2 * uzunKenar.toDouble();
  }

  @override
  void selamla() {
    print("ben dikdörtgen sınıfındanım");
  }
}
