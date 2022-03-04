void main(List<String> args) {
  Araba honda =
      Araba(2020, "honda", true); //bunu dediğin an hafızada bir yer açılıyor.
  // honda.marka = "honda";
  //honda.modelYili = 2020;
  // honda.otomatikMi = true;
  honda.bigileriSoyle();
  // honda.modelYili = 2021;
  // honda.bigileriSoyle(); //güncellediğim için artık 2021 yazacak.

  var reno = Araba(2019, "reno", false);
  reno.bigileriSoyle();

  var bmw = Araba(2021, "BMW", true);
  //bu gibi durumlarda kurucu methodları kullanıyoruz

  bmw.bigileriSoyle();
  bmw.yasHesapla();

  var citroen = Araba.markasizKurucuMethod(false, 2015);
  Araba suzuki = Araba.modelYiliOlmayanKurucuMethod(true, "suzuki");

  suzuki.bigileriSoyle();
  suzuki.yasHesapla(); // modelYili olmadığından altta düzeltme yaptık.
}

class Araba {
  // sınıf main'nin dışında olmalı.
  int? modelYili;
  String? marka;
  bool? otomatikMi;

  /* Araba(this.modelYili,this.marka,this.otomatikMi){
  print("kurucu method tetiklendi");
  }*/ // KISA YOL.

  Araba.markasizKurucuMethod(this.otomatikMi, this.modelYili);
  Araba.modelYiliOlmayanKurucuMethod(bool otomatikMi, String marka) {
    // uzun yol. This kısa yol idi.
    // istediğimiz kadar oluşturabileceğimiz kurucu methotlar.
    this.otomatikMi = otomatikMi;
    this.marka = marka;
  }

  //kurucu method bir nesne ürettiğimizde ilk tetiklenen methottur.

  // this o an üzerinde çalışılan nesneyi ifade ediyor.isimler aynı olduğunda kullanmak zorundasın.Değilse uzun yöntemi de kullanabilirsin.

  /*Araba() {
    // constructor özel bir methottur.
    print("kurucu method tetiklendi"); // önce bu satır çalışacak.
  }*/

  Araba(int modelYili, String marka, bool otomatikMi) {
    // parametre alan kurucu method.
    print("kurucu method tetiklendi");
    this.modelYili = modelYili;
    this.marka = marka;
    this.otomatikMi = otomatikMi;

    // parametre ile sınıfın içinde tanımladığımız instance verilerinin adı aynı olduğu zaman this kullanıyoruz.

    //hangisi sınıfın içindeki hangisi main'nin içindeki.Bu yüzden this komutu kullanıyoruz.
  }

  void bigileriSoyle() {
    print(
        "arabanın model yili : ${modelYili}, markası  : ${marka}, otomatik mi : ${otomatikMi} ");
  }

  // sınıflarda bilgiler saklayabileceğimiz gibi sınıflarımızın yapabileceği işleri de bir fiil gibi belirteceğimiz fonksiyonlar yani methodlar oluşturabiliriz.

  void yasHesapla() {
    if (modelYili != null) {
      print("arabanın yaşı : ${2021 - modelYili!}");
    } else {
      print("model yılı olmadığından yaş hesaplanamadı");
    }

    // "!" null olabilecek şeyleri null değilmiş gibi davranmasını sağlıyor.
    // sadece modelYili yazdığında null olabilir demiş olursun ve bir sayıdan null değer çıkamazsın.
  }
}
