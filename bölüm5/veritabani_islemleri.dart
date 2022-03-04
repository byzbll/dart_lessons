import 'dart:math';

class VeriTabaniIslemleri {
  String _kullaniciAdi = "emre";
  String _sifre = "123456";
  // başına "_" koyduğunda private alan  oluyor.

  bool baglan() {
    if (_internetVarMi()) {
      if (_kullaniciAdi == "emre" && _sifre == "123456") {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  // kullanıcı adı ve şifreyi girebileceğimiz bir kurucu metot oluşturalım.
  VeriTabaniIslemleri() {} // varsayılan kurucu.
  VeriTabaniIslemleri.loginWithNameandPassword(
      String kullaniciAdi, String sifre) {}

  bool _internetVarMi() {
    if (Random().nextBool()) {
      // bu true ya da false değer döndürecek.
      // rastgele internet bir olsun bir olmasın.
      return true;
    } else {
      return false;
    }
  }
}
