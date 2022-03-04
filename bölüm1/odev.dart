/*Sorular
1-Adınızı, soyadınızı ve yaşınızı farklı değişkenlerde saklayıp,ekrana "Benim adım beyza bal,yaşım 20 ve tüm ismimdeki karakter sayısı : 8'dir"

2-Bir üçgenin tüm kenarlarını değişkenlerde saklayıp çevresini ekrana yazdırın.  
örnek birinci kenarı 3, ikinci kenarı 4, üçüncü kenarı 5 olan üçgenin çevresi 12'dir
*/
//Cevaplar
void main(List<String> args) {
  String ad = "beyza";
  String soyIsim = "bal";
  int yas = 20;
  print(
      "benim adım beyza bal, yaşım $yas ve tüm ismimdeki karakter sayısı : ${ad.length + soyIsim.length} 'dir ");

  int kenar1 = 3;
  int kenar2 = 4;
  int kenar3 = 5;
  print(
      "birinci kenarı $kenar1,ikinci kenarı $kenar2,üçüncü kenarı $kenar3 olan üçgenin çevresi ${kenar1 + kenar2 + kenar3}'dir");
}
