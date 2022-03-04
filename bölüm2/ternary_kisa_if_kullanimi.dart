void main(List<String> args) {
  int sayi1 = 4;
  var sayi2 = 6;
  int kucukSayi;

  /* if (sayi1 < sayi2) {
    kucukSayi = sayi1;
  } else {
    kucukSayi = sayi2;
  } */
  //sayi1 < sayi2 ? kucukSayi = sayi1 : kucukSayi = sayi2;
  kucukSayi = sayi1 < sayi2 ? sayi1 : sayi2;
  print("küçük sayı:$kucukSayi");

  String? ad = null;
  String? soyad = "bal";
  String? mesaj;

  mesaj = ad ?? soyad;

  print("merhaba $mesaj ");
}
