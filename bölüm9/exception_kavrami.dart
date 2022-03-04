// exception'lar run time kısmında çıkar.
void main(List<String> args) {
  print("program çalıştı");
  try {
    int sayi = 100 ~/ int.parse("emre"); //emreyi int dönüştürmeye çalışacak.
    //"~" noktalı kısmını at, int kısmını ver.
    print(sayi);
  } on IntegerDivisionByZeroException {
    //hatanın sebebini biliyorsam.
    print("bölen sıfır olamaz");
  } on FormatException catch (e) {
    //bu şekilde de kullanılabilir.
    print(e.message);
    print(e.source); //hatanın çıkma sebebi emre ifadesiymiş.
  } catch (e) {
    // oluşan hata buraya bir parametre olarak verilecektir.
    //catch (e)=çıkacak olan hatanın sebebini bilmiyorsak.
    print("hata çıktı ${e}");
  } finally {
    print("işlem bitti"); //hata çıksın çıkmasın bunu ekranda göreceğim.
  }
  print("program bitti");
}
