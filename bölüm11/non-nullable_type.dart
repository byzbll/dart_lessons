/**
* Dart varsayılan olarak hiç bir değişkene null değer atanmasına izin vermez.Buna dartta non-nullable tip denir.Bir değişken tanımlayıp uygun veriyi atamazsanız size uyarı verecektir.Bu uyarıda değişkene ilk değeri atamanız istenecektir.Böylece program çalışırken hiçbir non-nullable bir değişken null değeri göstermez.(null sound) 
*
* Bunu istemiyorsanız veri tipinin sonuna ? koyarsanız.Böylece değişkende null değer saklanabilir.Bunlar da aslında yeni bir veri tipidir.? koyarak nullable type olusturmus olursunuz.
 */

void main(List<String> args) {
  //artık nullable bir değişken oluyor.
  int? a;
  a = null;
  print("a değişkenin değeri $a");
}
