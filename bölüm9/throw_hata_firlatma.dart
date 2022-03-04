// kendi hatamı kendim fırlatabilir miyim.
// fırlatılan hata çağrıldığı yere dönüyor.daha sonra çağrıldığı yerde catch yapısı var mı? örneğin iç içe fonksiyonlar olsaydı önce kendisinde daha sonra çağrıldığı yerde catch yapısı arayacaktı.

import 'dart:math';

void main(List<String> args) {
  try {
    // bu kodu bir dene.
    double deger = kareKokunuAl(20);
    print("değer: ${deger.toStringAsFixed(2)}");
    //toStringAsFixed = virgülden sonra kaç rakam göstereyim
  } on FormatException catch (e) {
    //bunu biraz daha özelleştirdik.
    print(e.message);
  } catch (e) {
    // en geniş tanımlısı.
    print(e);
  }
}

double kareKokunuAl(int i) {
  /* if (i < 0) {
    print("lütfen pozitif sayı giriniz.");
    return 0;
  } else {
    return sqrt(i); // karekök alıyor.
  }*/

  if (i < 0) {
    throw FormatException("sayı negatif olamaz"); //hata fırlatıyorum.
  } else {
    return sqrt(i);
  }
  //burası hata fırlatınca ilk olarak kendi fonksiyonuna bakar
}
