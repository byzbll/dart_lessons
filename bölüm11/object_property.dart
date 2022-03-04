/*
* Sınıflarımızı oluştururken oluşturduğumuz değişkenler(property) için de null safety özellikleri geçerlidir. Bu özellikleri ilk defa uyguladığımızda karışık gelebilir.
*
* Çünkü bu propertylerin getter ve setter methotları doğrudan veya dolaylı olarak vardır.Bundan dolayı da bu değişkenler aynı scopo içinde farklı değerler üretebilirler .Siz bu yapılara her erişim yaptığınızda farklı sonuçlar alabilirsiniz.
*
* Bunun çözümü ise ilgili veriyi bir değişkende saklayıp, getter üzerinden değil değişken üzerinden kontrolleri yapmanızdır.
 */
import 'dart:math';

class MetinUretici {
  String? metin = "emre";
}

class RastgeleMetinUretici {
  String? degerUret() {
    if (Random().nextBool()) {
      return 'string ifade';
    } else
      return null;
  }
}

void main(List<String> args) {
  final uretici = RastgeleMetinUretici(); //nesne ürettik.
  String? sonuc =
      uretici.degerUret(); //öncelikle sonucu local bir değişkene atadık.

  if (sonuc == null) {
    print("null değer oldu");
  } else {
    metniYazdir(sonuc);
  }

  MetinUretici m = MetinUretici();
  String? met = m.metin;

  if (met != null) {
    metniYazdir(met);
  }
}

void metniYazdir(String ifade) {
  print(ifade);
}
