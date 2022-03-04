void main(List<String> args) async {
  Map<dynamic, dynamic> gelenUser = await idyeGoreUserGetir(6);
  List<String> kuslarListesi =
      await usernameGoreKurslariGetir(gelenUser['username']);
  String yorum = await kursunIlkYorumunuGetir(kuslarListesi[0]);
  print(yorum);
}

Future<String> kursunIlkYorumunuGetir(String kursAdi) {
  return Future<String>.delayed(Duration(seconds: 1), () {
    return "kurs mükemmel";
  });
}

Future<List<String>> usernameGoreKurslariGetir(String username) {
  print("$username kullanıcısının kursları getiriliyor");
  return Future<List<String>>.delayed(Duration(seconds: 4), () {
    return ['futter', 'kotlin', 'javascript'];
  });
}

Future<Map> idyeGoreUserGetir(int id) {
  print("$id idli kullanıcı getiriliyor");
  //ne değeri üreteceğini virgülden sonra yazıyorduk.
  return Future<Map<String, dynamic>>.delayed(Duration(seconds: 2), () {
    //2 saniye sonra geriye bir map değeri döndürecek.
    return {'username': 'emre altunbilek', 'id': id};
  });
}
