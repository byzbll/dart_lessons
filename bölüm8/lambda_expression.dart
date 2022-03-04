/*

*Lambda:  İsmi olmayan fonksiyonlardır.Dartta aslında her fonksiyon bir nesnedir.

 */
void main(List<String> args) {
  Function fonksiyon1 = (int a, int b) {
    //function fonksiyonları tutar.
    int toplam = a + b;
    print(toplam);
  }; // artık bir değişken olduğundan noktalı virgülle bitirmem gerekir.

  fonksiyon1(5, 8);

  var f2 =
      (int s) => s * 2; //fat arrow(süslü parantez ve returndan kurtarıyordu.)
  var f3 = (int s2) {
    return s2 * 2;
  }; //aynı yazım.

  var sayi = f2(5); //çağırmak için parantez ifadesini kullanıyoruz.
  print(sayi);
  print(f3(6));
}

//Normal bir fonksiyon.
void sayilariTopla(int a, int b) {
  int toplam = a + b;
  print(toplam);
}
