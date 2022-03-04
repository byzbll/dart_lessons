void main(List<String> args) {
  Kisi emre = Kisi("emre", 34);
  emre.kendiniTanit();
  Calisan hasan = Calisan("hasan", 34, 3000);
  hasan.kendiniTanit();
}

class Kisi {
  String isim;
  int yas;

  Kisi(this.isim, this.yas);
  void kendiniTanit() {
    print("benim adım $isim yaşım $yas");
  }
}

class Calisan extends Kisi {
  int maas;

  Calisan(String name, int age, this.maas) : super(name, age);
  // gelen değer direkt olarak maaşa atansın.

  @override // üst sınıfımdaki methodu ezmek istiyorum.
  void kendiniTanit() {
    super.kendiniTanit();
    print("maaşımda $maas");
  }
}
