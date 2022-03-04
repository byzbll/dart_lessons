/* VERİ TİPLERİ VE DEĞİŞKEN KAVRAMI
DEĞİŞKEN: Bir işlemi gerçekleştirmek için yapılması gereken ilk şey o veriyi hafızaya almaktır.İşlem yapmak istediğimizde de 
veriyi hafızadan çağırıp gerekli işlemleri yerine getirmektir.Hafızadaki verileri ifade etmek için programlama dillerinde 
değişkenleri kullanırız.Özetle vermek gerekirse; programlama dilinde istediğimiz verileri bilgisayarın
hafızasında tutmak için yapmış olduğumuz tanımlamalardır.abstract

Tutulan verilerin türüne göre farklı veri tipleri vardır.Dart built - in olarak şu tipleri içerir.abstract.
- Number
  -int tamsayılar 
  -double ondalıklı sayılar 
- String metinsel ifadeler 
-Boolen true/false 


Tüm veri tipleri Object yani nesneleridir.

var anahtar kelimesi variable anlamına gelir ve veri türünü belirtmek istemiyorsak kullanırız.Atanan ifadeye göre otomatik olarak türü belirtir.
*/
void main(List<String> args) {
  String ad = "beyza ";
  print(ad);
  print(ad + "sevdiği renkler ");
  bool erkekMi = true;
  bool issizMi = false;
  print(erkekMi);
  print(issizMi);
}
