/* 
* SORU 1 : 3 tane double değişken olusturup bunların ortalamasını yazdıran programı yazınız.
* SORU 2 : kenarlarını girdiğiniz üçgenin çeşidini yazdıran programı yazınız.
* SORU 3 : vize ve final notlarını alıp dersi geçip geçmediğini bulan programı yazınız.
(geçme notu alt degeri = 50,vizenin %40 finalin %60'ı alınır.)
* SORU 4 : kendi adınızı ekrana 5 kere yazdıran uygulamayı tüm döngü ifadeleri ile yazınız.
* SORU 5 : 1'den 100'e kadar olan ve 15 ile tam bölünen sayıların karelerini ekrana yazdırınız.
* SORU 6 : tanımlanan int bir sayının faktöriyelini bulan uygulamayı yazınız.
*/

void main(List<String> args) {
  // SORU 1
  double sayi1 = 4.6;
  double sayi2 = 5.7;
  double sayi3 = 7.2;
  var ortalama;
  ortalama = (sayi1 + sayi2 + sayi3) / 3;
  print("$ortalama");

  // SORU 2
  int kenar1 = 7;
  int kenar2 = 8;
  int kenar3 = 9;
  if (kenar1 == kenar2 && kenar1 == kenar3) {
    print("girdiğiniz üçgen eşkenar üçgendir");
  } else if (kenar1 == kenar2 && kenar1 != kenar3) {
    //dikkat atama yapmıyorum soruyorum.
    print("girdiğiniz üçgen ikizkenar üçgendir");
  } else if (kenar1 != kenar2 && kenar1 != kenar2 && kenar2 != kenar3) {
    print(" girdiğiniz üçgen çeşitkenar üçgendir ");
  } else {
    print("hatalı giriş yaptınız");
  }

  // SORU 3
  int vizeNot = 10;
  int finalNot = 40;
  double gecmeNot;
  gecmeNot = vizeNot * (40 / 100) + finalNot * (60 / 100);
  if (gecmeNot >= 50) {
    print("dersi geçtiniz");
  } else {
    print("dersten kaldınız");
  }

  // SORU 4
  for (int i = 0; i < 5; i++) {
    print("Beyza Bal");
  }

  // SORU 5
  for (int i = 1; i < 100; i++) {
    // sınırlar belli ve ne kadar çalışacağı belli.
    if (i % 15 == 0) {
      print("${i * i}");
    } else {
      print("yanlış sayı girdiniz");
    }
  }
  // SORU 6
  int faktoriyel = 1;
  for (int i = 1; i <= 4; i++) {
    faktoriyel *= i; // veya faktoriyel = faktoriyel * i
  }
  print("$faktoriyel");

  // EMRE ALTUNBİLEK SORU ÇÖZÜMLERİ
  double sayi4 = 12, sayi5 = 14, sayi6 = 15;
  print(
      "girilen $sayi4 , $sayi5 ve $sayi6 sayılarının ortalaması ${(sayi4 + sayi5 + sayi6) / 3} ");

  // SORU 4 (WHILE İÇİN DIŞARIDA BİR KONTROL DEĞİŞKENİ OLUŞTURUYORDUK)
  int kontrol = 0;
  while (kontrol < 5) {
    print("${kontrol + 1}.inci döngüde ismim : Beyza Bal");
    kontrol++; //döngünüzü kontrol eden değişkene bir işlem yapmalısınız yoksa sonzuz döngüye girecektir.
  }

  // do-whıle döngüsünde ilk olarak isteğimiz yapılırdı sonrasında şarta bakılırdı.
  int kontrol1 = 0;
  do {
    print(
        "${kontrol1 + 1}.inci döngüde ismim : Beyza Bal"); //ilk olarak yaptırmak istediğim işlem.
    kontrol1++;
  } while (kontrol1 < 5); // daha sonra şart yazdırılır.

  for (int i = 1; i < 100; i++) {
    if ((i % 3 == 0) && (i % 5 == 0)) {
      print("15 ile tam bölünebilen $i'nin karesi ${i * i}");
    }
  }

  int sayi = 6;
  int sonuc = 1;
  int sayac = 1;
  while (sayac <= sayi) {
    sonuc = sonuc * sayac;
    sayac++;
  }
  print(
      "girdiğiniz $sayi'nın faktöriyeli : ${sonuc}"); //döngünün dışına yazki sürekli printin içindekini yazmasın.!
}
