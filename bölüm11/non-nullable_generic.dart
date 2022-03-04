/**
 * Generic tipleri belirtirken de nullable ve non-nullable kavramları geçerlidir.
 * Burada önemli olan ? nereye koyduğumuzdur.
 * 
 * Liste null olabilir diyorsak List<String>?,listenin bazı elemanları null olabilir diyorsak List<String?> diye belirtebiliriz.
 */

void main(List<String> args) {
  List<String> stringListesi = ['emre', 'hasan', 'ali'];
  List<String>? nullOlabilecekStringListesi;
  List<String?> nullOlabilecekStringleriTutanListe = ['emre', null, 'hasan'];

  print('string listesi $stringListesi');
  print('null olabilecek liste $nullOlabilecekStringListesi');
  print(
      'null olabilecek stringleri tutan liste $nullOlabilecekStringleriTutanListe ');
}
