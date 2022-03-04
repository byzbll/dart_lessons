void main(List<String> args) {
  Asker emre = Asker("emre", 34);
  Er hasan = Er("hasan", 20);
  hasan.selamla();
  hasan.memleketDegistir("bursa");
  hasan.selamla();
}

class Asker {
  String ad = "varsayılan";
  int yas = 0;
  String memleket = "ankara";
  Asker(this.ad, this.yas) {
    //asker sınıfından bir nesne üretilirken mutlaka bu verilerin yazılmasını istiyorum demek.
    //yazmasakda varsayılan bir constructor'ı vardı.
    print("Asker sınıfının kurucusu çalıştı");
  }

  void selamla() {
    print("merhaba adım $ad ve yaşım $yas");
  }
}

class Er extends Asker {
  Er(String ad, int yas) : super(ad, yas) {
// süper deyip parantez açtığımda üst sınıfın constructor'ına ulaşıyorum.
    print("Er sınıfının kurucusu çalıştı");
  }

  void memleketDegistir(String yeniMemleket) {
    super.memleket = yeniMemleket;
  }

  @override
  void selamla() {
    print("Er sınıfından selamlar.");
  }
}
// alt sınıftan bir nesne ürettiğinde(aralarında kalıtım ilişkisi olan) ilk olarak üst sınıfın kurucu methodu çalışır.

/*class Deneme extends Er {
  Deneme() {
    print("deneme sınıfının kurucusu çalıştı");
  }
}*/
// süper üst sınıfa git demek.
