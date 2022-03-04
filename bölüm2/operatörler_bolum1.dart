void main(List<String> args) {
  double sayi1 = 9;
  double sayi2 = 6;
//ARİTMETİK OPERATORLER
  print("$sayi1 + $sayi2 toplamı ${sayi1 + sayi2} ");
  print("$sayi1 - $sayi2 toplamı ${sayi1 - sayi2} ");
  print("$sayi1 * $sayi2 toplamı ${sayi1 * sayi2} ");
  print("$sayi1 / $sayi2 toplamı ${sayi1 / sayi2} ");
  print("$sayi1 % $sayi2 toplamı ${sayi1 % sayi2} ");
//ATAMA VE KARŞILAŞTIRMA
  double sayi3 = 5;
  sayi3 = sayi3 + 5;
  print(sayi3);
  sayi3 += 5; // sayi3 = sayi3 + 5
  print(sayi3);
  // == (kıyaslama yapar), != (eşit değil demektir)
  double sayi4 = 9;
  double sayi5 = 5;
  if (sayi4 <= sayi5) {
  } else {
    print("sayi $sayi4 küçük ve eşit değildir $sayi5 ");
  }
  String isim = "emre";
  String soyIsim = "altunbilek";

  if (isim != soyIsim) {
    print("isim soyisim ile aynı değil ");
  } else {
    print("isim ile soyisim aynı değere sahip");
  }
  // MANTIKSAL OPERATÖRLER
  // &&(VE),||(VEYA),!(TERS)

  bool kosul1 = true;
  bool kosul2 = false;
  print(kosul1 && kosul2);

  print(kosul1 || kosul2);
  print(!kosul1);
  // ARTTIRMA VE AZALTMA OPERATÖRLERİ
  int sayi8 = 10;
  sayi8 = sayi8 + 1;
  sayi8 += 5; // sayi8 = sayi8 + 5
  print(sayi8);
  sayi8++; //1 arttırmak demektir.artıları nereye koyduğun önemlidir.Burada sayi8'i kullan,arttırve daha sonrasında yazdır.
  print(sayi8);
  int sayi7 = 10;
  print(sayi7++);
  print(++sayi7);
  /* İŞLEM ÖNCELİĞİ
  ()=> Önce parantez içi işletilir.
  ++ ve -- Değişkenden önce gelenler.
  * ve /
  + ve -
  = atama işlemi
  ++ ve -- Değişkenden sonra gelenler */
  int s1 = 10, s2 = 5;
  int sonuc = 0;
  sonuc = (s1 + s2 * 3 - s2) + s2 - s1 * 5 + s1;
  print(sonuc);

  int s3 = 10, s4 = 5;
  double cevap = 0;
  cevap = (s3 * s4 + 4 / 2) + s3++ * s4 + (++s3);
  print(cevap);
  // önce çarpma sonra arttırma işlemi yapılır değişkenden sonra geldiği için.
}
