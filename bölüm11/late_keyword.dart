/*
* Bazen değişkenler veya propertyler non-nullable olmalıdırama ilk değer ataması hemen gerçekleşmeyecektir.bu durumlarda late anahtar kelimesi kullanılır.
*
* Bir değişkenin önüne late yazdığınızda dart'a şunları söylemiş olursunuz
* 1- bu değişkene bir değer atama
* 2- değeri sonradan atayacaksın
* 3- bana güven dart,valla bu değişkeni sen okumadan önce initialize edeceğim
*
* Eğer değişkene değer atamadan okumaya çalışırsanız hata alırsınız.
 */

class Yemek {
  late final String tanim;
  //null değer olabilir ancak kullanmadan hemen önce içine değer atayacağım.
  late final int fiyat;
  Yemek(int fiyat) {
    this.fiyat = fiyat;
  }
  void setTanim(String tanim) {
    this.tanim = tanim;
  }
}

void main(List<String> args) {
  final yemegim = Yemek(100);
  yemegim.setTanim('kuru fasulye');
  print(yemegim.tanim);
}
