void main(List<String> args) {
  sayilaritopla(); // fonksiyonu çağırmak.
  int fark = sayilariCikar(15, 4);
  print("fark $fark");
  sayilariCarp(10, 12);
  print("çarpım : " +
      sayilariCarp(10, 12)
          .toString()); //öncesinde string bir ifade olduğundan stringe dönüştürmeliyim.
}

void sayilaritopla() {
  // geriye herhangi bir şey döndürmeyen fonksiyon.
  int sayi1 = 10, sayi2 = 5;
  print("toplam ${sayi1 + sayi2}");
  print("büyük olan sayı : " + maxOlaniBul(4, 5).toString());

  // string bir ifadeyi direkt int'e bağlayamazsın.
}

int sayilariCikar(int s1, int s2) {
  return (s1 - s2);
}

int sayilariCarp(int s1, int s2) =>
    s1 * s2; //kısa gösterimde return ve süslü parantezler yok.

int maxOlaniBul(int s1, int s2) {
  if (s1 < s2) {
    return s2;
  } else {
    return s1;
  }
}
// int maxOlaniBul(int s1, int s2) => (s1 < s2 ) ? s2 : s1 ;
