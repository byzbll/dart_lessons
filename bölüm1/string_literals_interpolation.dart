/*
String : Metinsel ifadeler için kullanılan veri türüdür.
Çift tırnak veya tek tırnak ile belirtilebilir.
İki stringi birleştirmek için + operatörü kullanılır.
Birden fazla satır süren metinsel ifadeleri birleştirirken + kullanmasak da olur.
'ifade 1'
'ifade 2' olarak kullanılabilir.   

Interpolation :string ifade içinde baska bir string ifadeyi $ifade olarak kullanabiliriz.Böylece + kullanmak gerekmez.
Eğer ifade birden fazla alana sahipse  ${ifade.method} şeklinde kullanılır.
Ayrıca interpolation diğer veri türleri için de geçerlidir.  
*/
void main(List<String> args) {
  String isim = "beyza";
  String soyIsim = "bal";
  var kurs = 'dart\'ın kullanımı';
  String kursTanimi = "dart'ı ve flutter'ı öğreneceğiz";
  print(isim + " " + soyIsim);
  print("$isim $soyIsim");
  print("soyadım olan $soyIsim'da bulunan karakter sayısı : " +
      soyIsim.length.toString());
  print("karakter sayısı : ${soyIsim.length}");
  print(
      "Adım olan $isim kelimesinde bulunan karakter sayısı : ${isim.length} ");
  double en = 10;
  double boy = 12;
  print("eni $en , boyu $boy olan dikdörtgenin alanı ${en * boy} ' dir");
}
