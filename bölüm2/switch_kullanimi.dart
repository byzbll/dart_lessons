/*
- switch: ard arda if - else if kullanmak yerine genellikle switch yapısı tercih edilir.  
- her biir case'den sonra break denilerek switch yapısından çıkılmalıdır.  
- switch kullanırken sadece int ve string veri türleri kullanılır, boolean veya doouble veri türleri kullanılmaz.  
*/
void main(List<String> args) {
  String notDegeri = 'BA';

  switch (notDegeri) {
    case "AA":
      print("notunuz 90-100 aralığındadır");
      break;
    case "BA":
      print("notunuz 80-90 aralığındadır");
      break;
    case "BB":
      print("notunuz 70-80 aralığındadır");
      break;
    case "CB":
      print("notunuz 60-70 aralığındadır");
      break;
    case "CC":
      print("notunuz 50-60 aralığındadır");
      break;
    case "FF":
      print("notunuz 50'den düşüktür,biraz daha çalışmalısın");
      break;
    default:
      {
        print("hatalı giriş yapıldı");
      }
  }
  int yas = 22;
  switch (yas) {
    case 18:
      print("ergensiniz");
      break;
    case 22:
      print("gençsiniz");
      break;
    case 60:
      print("yaşlısınız");
      break;
    default:
      {
        print("hatalı değer girdiniz");
      }
  }
  int sayi = 26;
  int bolum = (sayi / 10).toInt();
  switch (bolum) {
    case 3:
      print("sayı 30'dan büyüktür");
      break;
    case 2:
      print("sayı 20'den büyüktür");
      break;
    case 1:
      print("sayı 10'dan büyüktür");
      break;
    case 0:
      print("sayı 10'dan küçüktür");
      break;
    default:
      {
        print("hatalı giriş");
      }
  }
}
