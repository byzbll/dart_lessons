void main(List<String> args) async {
  print("program başladı");

  Future.delayed(Duration(seconds: 0), () {
    print("0 saniyelik işlem");
  });

  print("program bitti");

  Future<int> toplam = Future(() {
    //zaten kodarın uzun sürdüğü.
    int toplam = 0;
    for (int i = 0; i < 10000000; i++) {
      toplam = toplam + i;
    }
    //return toplam;
    throw ("toplam hesaplanamadı");
  });

  //toplam.then((int toplam) => print(toplam)).catchError((hata) => print(hata));
  //future kurucusu hem hata verebilir hemde değer verebilir.

  try {
    int forSonuc = await toplam;
    print(
        "****** $forSonuc"); //hata almasını beklediğim kodları try'ın içine yazdım.
  } catch (e) {
    print(e);
    //async - await hata için try-catch yapılarını kullanabilirsin.
  }

  var f2 = Future.value('emre');
  var f3 = Future.error('hata ile biten future');
  f3.catchError(
      (hata) => print(hata)); //zaten hata olduğundan then kullanmıyorum.
}
