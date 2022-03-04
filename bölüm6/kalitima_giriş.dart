void main(List<String> args) {
  /* User user1 = User();
  NormalUser normal1 = NormalUser();

  SadeceOkuyabilenNormalUser user = SadeceOkuyabilenNormalUser();
  user.davetEt();
  user.girisYap();
  user.adiniSoyle();
  normal1.girisYap();
  user1.girisYap();*/

  User user1 = User();
  var user2 = NormalUser();
  SadeceOkuyabilenNormalUser user3 = SadeceOkuyabilenNormalUser();
  AdminUser user4 = AdminUser();

  User user5 = AdminUser();
  User user6 = SadeceOkuyabilenNormalUser(); //upcasting yukarı cevrim.

  List<User> tumUserlar = [];
  tumUserlar.add(user1);
  tumUserlar.add(user2);
  tumUserlar.add(user3);

  test(user1);
  test(user2);
  test(user3);
  test(user4);
}

void test(User kullanici) {
  kullanici.girisYap(); //polimorfizm çok biçimlilik.
  //kullanici isimli yapı farklı farklı türlere giriyor.
}

class User {
  String email = "";
  String password = "";

  void girisYap() {
    print("parent user giriş yaptı");
  }
}

class NormalUser extends User {
  // user sınıfından türetilmiş oldular.
  void davetEt() {
    print("normal user arkadaşlarını davet etti");
  }

  @override
  //bu sınıfın bir üst sınıfı var.bu orada tanımlı ama ben tekrar yazmak istiyorum.
  void girisYap() {
    print("Normal User giriş yaptı"); // kendime göre düzenledim.
  }
}

class SadeceOkuyabilenNormalUser extends NormalUser {
  void adiniSoyle() {
    print("ben sadece okuyabilirim");
  }

  @override
  void girisYap() {
    print("SadeceOkuyabilenNormalUser giriş yaptı");
  }
}

class AdminUser extends User {
  @override
  void girisYap() {
    print("admin user giriş yaptı");
  }

  void toplamKullaniciSayisiniGoster() {
    print("toplam user sayısı 20");
  }
}


// üst sınıflar daha genelken aşağıya indikçe spesifikleşiyor.