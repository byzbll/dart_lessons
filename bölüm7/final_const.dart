void main(List<String> args) {
  /* var str = "emre";
  str = "altunbilek";

  final String str2 = "emre"; //var yazamam.
  // str2 = "altunbilek";(diyemem)

  const String str3 = "emre";
  str3 = "altunbilek";*/

// const'ı compile time da belli olan değerler için kullanacağız.(çalışmadan önce değeri bilinen yapılar için kullanılıyor.)
// final'ı run time da kullanacağız.

  final liste = [1, 2, 3];
  final liste2 = [1, 2, 3];

  liste.add(4);
  liste.add(8);

  //final'ı liste ve koleksiyonlarda kullandığın zaman bellek yerini değiştirmiyorsun sadece eleman ekledin.
  // eleman ekleyip çıkarabilirsin ancak liste=... diyip yeni bir yapı tanımlayamazsın.
  if (liste == liste2) {
    //bellek adreslerini karşılaştıracak.(bu yüzden eşit değil dedi.)
    print("eşit");
  } else {
    print("eşit değil");
  }
  //canoicalized
  const liste3 = [1, 2];
  const liste4 = [1, 2];

  if (liste3 == liste4) {
    //bellek adreslerini karşılaştıracak.(bu yüzden eşit değil dedi.)
    print("eşit");
  } else {
    print("eşit değil");
  }

  //const da eleman ekleyemiyorsun.
  //50 defa da yazsan bellekte bir tane yer tutacak ve aynısını gösterecek.
}
