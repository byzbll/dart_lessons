/* SORULAR
* SORU 1 : şehirleri tutan bir liste oluşturun,4 tane il ekleyip sırasıyla ekrana yazdırın.
* SORU 2 : keyleri string, değerleri dynamic olan bir map oluşturun.Bu map yapısında bilgisayarınızın işlemci çekirdek sayısını, ram miktarını ve ssd olup olmadığı bilgisini tutun ve ekrana yazdırın.
* SORU 3 : Her bir elemanında keyleri string, value'leri dynamic map olan bir liste olusturun.
örnek listenin 1. elemanında bulunan il ankara, plaka kodu:06, ilçe sayısı:10(değerler rastgele olabilir).
* SORU 4 : 5 elemanlı iki farklı liste olusturun.Elemanlar 0-50'ye rastgele şekilde olusturulsun.Bu elemanları tek bir listeye aktarın.
Olusan son listenin elemanlarının karelerini tutan set yapısı oluşturup ekrana yazdırın.
* SORU 5 : kullanıcıdan aldığınız integer pozitif sayıları bir listede tutun,kullanıcı -1 değerini girdiğinde girilen sayıların ortalamasını ekrana yazdırın. 
 */
import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  // SORU 1
  List<String> sehir = ['trabzon', 'samsun', 'kütahya', 'rize'];
  print(sehir);

  print("**************************************");

  List<String?> sehir1 = []; // kullanıcı null değer atayabilir.
  sehir1.add('samsun');
  sehir1.add('trabzon');
  sehir1.add('kütahya');
  sehir1.add('rize');
  print(sehir1);

  List<String> sehirler = List.filled(4, "");
  // sabit uzunluklu listelerde add değil direkt indexler kullanılır.
  // varsayılan olarak sıfır alamam çünkü string veriler tutuyorum.
  // boyutu belli sabit uzunluklu listeler.
  sehirler[0] = 'samsun';
  sehirler[1] = 'trabzon';
  sehirler[2] = 'kütahya';
  sehirler[3] = 'rize';
  // print(sehirler); [for döngüsü kullanalım].
  for (int i = 0; i < sehirler.length; i++) {
    print(sehirler[i]);
  }

  // SORU 2
  Map<String, dynamic> bilgisayar = {
    "islemci cekirdek sayısı": 4,
    "ram miktarı": 8,
    "ssdMi": true
  };
  print(bilgisayar);

  Map<String, dynamic> bilgi = {}; // boş olarak da tanımlayabilirsin.
  bilgi['cekirdek_sayisi'] = 16;
  bilgi['ram_miktarı'] = 8;
  bilgi['ssd_var_mi'] = true;
  print("bilgisayar bilgileri");

  // sürekli tekrar etmesin diye for'un üstüne aldım.

  for (var oankiEntry in bilgi.entries) {
    print("${oankiEntry.key} : ${oankiEntry.value}");
  }

  // SORU 3 (sorunun anlamı liste map tutacak)
  List<Map<String, dynamic>> iller = <Map<String, dynamic>>[];
  Map<String, dynamic> eklenecekSehir1 = Map<String, dynamic>();
  eklenecekSehir1['il_adi'] = 'ankara';
  eklenecekSehir1['ilce_sayisi'] = 10;
  eklenecekSehir1['plaka_kodu'] = 6;

  Map<String, dynamic> eklenecekSehir2 = <String, dynamic>{};
  // veya bunlara hiç bulaşmam
  eklenecekSehir2['il_adi'] = 'bursa';
  eklenecekSehir2['ilce_sayisi'] = 6;
  eklenecekSehir2['plaka_kodu'] = 16;
  // maplerimin henüz oluşturduğum listeyle alakaları yok.

  var eklenecekSehir3 = <String, dynamic>{};
  eklenecekSehir3['il_adi'] = 'istanbul';
  eklenecekSehir3['ilce_sayisi'] = 16;
  eklenecekSehir3['plaka_kodu'] = 34;

  iller.add(eklenecekSehir1);
  iller.add(eklenecekSehir2);
  iller.add(eklenecekSehir3);

  iller.add({'il_adi': 'izmir', 'ilce_sayisi': 9, 'plaka_kodu': 35});
  // kısa yoldan ekleme
  /* print(iller);
  print( iller[0]['il_adi']);*/
  // direkt bir parçayı yazdırır.(ankaranın bilgileri)
  for (int i = 0; i < iller.length; i++) {
    // listenin elemanlarını baştan sona gezmek için.
    var oankiSehirMapYapisi = iller[i];
    print(
        "Listenin ${i + 1}. elemanında bulunan sehir adı: ${oankiSehirMapYapisi['il_adi']}  ilce sayısı: ${oankiSehirMapYapisi['ilce_sayisi']} plaka kodu: ${oankiSehirMapYapisi['plaka_kodu']}   ");

    // maplere ulaşmak için köşeli parantez ve key adı.
  }

  // SORU 4
  var list1 = [1, 2, 3, 4, 5];
  var list2 = [6, 7, 8, 9, 10];
  var sonListe = [...list1, ...list2];

  Set<int> sonList1 = Set.from([1, 4, 9, 16, 25, 36, 49, 64, 81, 100]);
  print(sonList1);

  // eleman sayısı belli olduğu için List.filled kullanacak.

  List<int> liste1 = List.filled(5, 0); // varsayılan olarak 0 atadım.
  var liste2 = List<int>.filled(5, 0); // var yazdığında dynamic atıyordu.
  List<int> sonListe1 = <int>[]; // büyüyen liste olarak tanımladım.
  Set<int> sonSetYapisi = {};

  // var sonSetYapisi = <int> {}; (bunu map yapı olarak algılıyordu)
  // int koyduğumda set olduğunu anlıyordu.

  /* liste1[0] = Random().nextInt(50);
  liste1[1] = Random().nextInt(50);
  liste1[2] = Random().nextInt(50);
  liste1[3] = Random().nextInt(50);
  liste1[4] = Random().nextInt(50);
  print(liste1);*/
  // amele yöntem.

  for (int i = 0; i < 5; i++) {
    liste1[i] = Random().nextInt(50);
    liste2[i] = Random().nextInt(50);
  }
  print(liste1);
  print(liste2);
  // tekrar eden elemanlar olabilir çünkü  listelerde buna bakılmıyordu

  sonListe1 = [...liste1, ...liste2];
  print(sonListe1);

  for (int gecici in sonListe1) {
    sonSetYapisi.add(gecici * gecici);
  }

  print(sonListe1);
  print(sonSetYapisi);

  // SORU 5
  // kullanıcıdan değer almak için launch.json'a "console" : "terminal" yaz.

  int girilenNot = 0;
  List<int> girilenNotlar = <int>[];
  // kaç tane girileceğini bilmediğim için ...
  // List<int> girilenNotlar2 = List.empty(growable: true);
  do {
    print("lütfen notunuzu giriniz , çıkış için -1");
    girilenNot = int.parse(stdin.readLineSync()!);
    // ünlem null değer gelmeyecek anlamındadır.
    // girilen notu isteyeceğiz kullanıcıdan.

    if (girilenNot != -1) {
      girilenNotlar.add(girilenNot);
    }
  } while (girilenNot != -1);

  print("kaç tane not girildi : ${girilenNotlar.length}");
  double ortalama = listeninOrtalamasiniBul(girilenNotlar);
  print("notların ortalaması $ortalama");
}

double listeninOrtalamasiniBul(List<int> liste) {
  // girilenNotlar ismindeki yapıyı listede saklıyorum artık.
  int toplam = 0;
  for (int i = 0; i < liste.length; i++) {
    toplam = toplam + liste[i];
  }

  return toplam / liste.length;
}
