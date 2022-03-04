/*
* SORU
* Bir fonksiyon yazın bu fonksiyon aldığı id parametresine göre bir kullanıcı getirsin.Bu işlem 2 saniye sonunda sonuclanacaktır ve getirilen kişi bilgisi map olarak alınacaktır.Bu map yapısında username ve id bilgisi olması yeterlidir.
*
* Getirilen kişi bilgisindeki username değerini kullanarak kişinin kurslarını getiren bir fonksiyon yazın.Bu fonksiyon 4 saniye sürecektir ve username değerine ait olan kursları içinde kursun adları olan bir liste olarak döndürecektir. 
*
*Son olarak da kurslar listesindeki ilk elemanı parametre olarak alan ve bu kursa ait bir yorumu döndüren bir fonksiyon yazın,bu fonksiyon 1 saniye sürecektir.
 */
void main(List<String> args) {
  idyeGoreUserGetir(5).then((value) {
    print(value); //fat arrowu sildim.
    usernameGoreKurslariGetir(value['username']).then((List kurslarListesi) {
      print(kurslarListesi);
      String ilkKurs = kurslarListesi[0];

      kursunIlkYorumunuGetir(ilkKurs).then((String yorum) {
        print(yorum);
      });
    });
  });
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
