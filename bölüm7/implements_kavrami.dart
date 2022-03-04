/*
* Dart dilinde interface kavramı yoktur, ama sınıfları implements anahtar kelimesi ile interfacemiş gibi kullanabiliriz.
* Interfaceler sayesinde ortak ozelliği olan ancak kalıtımsal olarak alakalı olmayan sınıfları bir çatı altında toplayabiliriz.
*
* Interface olarak kullanılan sınıfların methodları bu sınıfları implemente eden sınıflar tarafından yapılmak zorundadır.
* Interfaceler sayesinde dart dilinde olmayan çoklu kalıtım saglanabilir.Bir sınıf birden fazla sınıfı implements diyerek gerçekleştirebilir.

* implements ile sınıflarımıza başka sınıfların özelliklerini ekleyebiliriz.
* Her sınıf tek bir sınıftan türetilebilir.
* implement ediyorsan mutlaka eklemelisin.
 */

void main(List<String> args) {}

abstract class Hayvan {
  void soyutOlmayanMetot() {
    print("metodun tanımı");
  }
}

abstract class Ucabilenler {
  void fly();
  void test() {
    print("test");
  }
}

abstract class Havlayabilenler {
  void bark();
}

abstract class kosabilenler {
  void run();
}

class Kopek extends Hayvan implements Havlayabilenler, kosabilenler {
  //extends deseydim tek bir yapı olurdu.
  @override
  void bark() {}

  @override
  void run() {}
}

class Kus extends Hayvan implements Ucabilenler {
  @override
  void fly() {}

  @override
  void test() {}
}

class Insan implements kosabilenler {
  @override
  void run() {}
}
