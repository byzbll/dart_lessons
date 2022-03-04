void main(List<String> args) {
  Ogrenci emre = Ogrenci(5, "emre");
  Ogrenci hasan = Ogrenci.idSiz("hasan");
  Ogrenci ayse = Ogrenci.factoryKurucusu(-9, "ayse");
  print(ayse.id);
  print(ayse.isim);

  int sayi = toplam();
}

int toplam() {
  return 3 + 5;
}

class Ogrenci {
  int id = 0;
  String isim = "";

//parametre alan varsayılan constructor oluşturuyoruz.
  Ogrenci(this.id, this.isim) {
    print("varsayılan kurucu çalıştı");
  }

  Ogrenci.idSiz(this.isim) {
    print("isimlendirilmiş kurucu çalıştı");
  }
  // ismini kendimiz belirledik.
  factory Ogrenci.factoryKurucusu(int id, String isim) {
    // burada kendi şartlarını yazabilirsin.
    // bunun farkı return kullanabiliyorsun.
    if (id < 0) {
      return Ogrenci(5, isim);
    } else {
      return Ogrenci(id, isim);
    }
  }

  // varsayılan ve isimlendirilmiş kurucularda "return" yazamazsın.
}
