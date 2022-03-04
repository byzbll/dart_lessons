/*
* closure özel bir fonksiyondur, closure ile bir üst kapsamdaki değişkenlerin değerlerini değiştirebiliriz.
 */
// lexical variable scope
void main(List<String> args) {
  var mainDegiskeni = 1;

  void a() {
    var aDegiskeni = 2;

    void b() {
      var bDegiskeni = 3;
      print(aDegiskeni);
      print(mainDegiskeni);
    }
  }

  /*var d = topla(10); //toplayı çağırdığında sana başka bir fonksiyon verecek.
  var sonuc = d(5); // d'de bir fonksiyon.
  print(sonuc);*/

  var dondurulenFonksiyon = topla(3);
  var sonuc = dondurulenFonksiyon(4);
  print(sonuc);
}

Function topla(int eleman) {
  return (int deger) => deger * eleman;
}
//normalde (var dondurulenFonksiyon = topla(3);) çalıştıktan sonra en sondaki yapının bellekten silinmesi lazım.ancak sistem ikinciye geçtiğinde "3" ü hala saklıyor.yani içerdeki fonksiyon dışardaki fonksiyona bağlanmış oluyor.Bu kavramada lexical closuers denir.  