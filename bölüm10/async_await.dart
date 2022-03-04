void main(List<String> args) async {
  print("internetten kişi verisi getirilecek");
  //kisiVerisiniGetir().then((value) => print(value));(bu normalde olan)
  kisiyleIlgiliIlgiliIslemler();
  print("başka işler yapılacak");
  print("işlem bitti");
}

void kisiyleIlgiliIlgiliIslemler() async {
  String kisi =
      await kisiVerisiniGetir(); //direkt string ifadeye atayabilmek için.
  print(kisi.length);
  //hem yapıyı beklesin hemde geç çalışmasın.
}

Future<String> kisiVerisiniGetir() {
  return Future<String>.delayed(Duration(seconds: 3), () {
    return "kişi adı: emre ve id:100 "; //3 saniye sonra internetten veri getirecek.
  });
}
