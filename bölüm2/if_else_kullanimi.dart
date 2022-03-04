void main(List<String> args) {
  int sayi1 = 12;
  int sayi2 = 18;
  if (sayi1 > sayi2) {
    print("$sayi1 sayısı $sayi2 sayısından büyüktür");
  } else {
    print("$sayi1 sayısı $sayi2 sayısından küçüktür");
  }
  if (sayi1 < sayi2) {
    print("$sayi1 sayısı $sayi2 sayısından küçüktür");
  } else if (sayi1 > sayi2) {
    print("$sayi2 sayısı $sayi1 sayısından küçüktür");
  } else {
    print("verdiğiniz sayılar birbirine eşittir");
  }
  print("**************************");

  int notDegeri = 75;
  if (notDegeri >= 90 && notDegeri <= 100) {
    print("notunuz:AA'dır");
  } else if (notDegeri >= 80 && notDegeri < 90) {
    print("notunuz:BA'dır");
  }
}
