void main(List<String> args) {
  double doubleOrtalama = ortalamaBul<double>(5, 5.4);
  double intOrtalama1 = ortalamaBul<int>(5, 6);
  print("ortalama $doubleOrtalama");
  print("intOrtalama $intOrtalama1");
}

double ortalamaBul<T extends num>(T s1, T s2) {
  //generic bir fonksiyondur.T diye bir parametre alabilir.
  return (s1 + s2) / 2; //stringleri bölemezsin.

// object'lerde + operatörü yoktur.
}
