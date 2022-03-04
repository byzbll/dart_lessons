/**
 * Dartdaki isimlendirilmiş parametreler varsayılan olarak opsiyoneldir.Tanımlanması kullanıcıya bağlıdır.Bu yüzden kullanıcı tarafından atanmazlarsa null değer alırlar ki bu kabul edilmez.Bu yüzden parametrelerin veri tipleri tanımlanırken String? , int? gibi nullable tiplerle belirtmeliyiz.
 * 
 * Bunun dışında tüm parametrelere varsayılan değerler atanarak da sorun çözülebilir.
 * 
 * Son çözüm ise required kullanarak bu parametrelerin mutlaka girilmesi sağlanabilir.
 */

int ucSayiyiTopla(
    {required int ilk, required int ikinci, required int ucuncu}) {
  //süslü parantezler varsa bu parametreler kullanıcının isteğine bağlıdır.ister yazar ister yazmaz.ancak yazacaksa mutlaka isim vererek belirtmek zorunda.
  return ilk + ikinci + ucuncu;
  // required diyorsan ilk değer atamanın anlamı yok.
}

void main(List<String> args) {
  final toplam = ucSayiyiTopla(ilk: 1, ikinci: 2, ucuncu: 5);
  final toplam2 = ucSayiyiTopla(ilk: 1, ikinci: 2, ucuncu: 5);

  // sadece ? koyarak halledemem.Çünkü null değer alabilecek ifadeleri toplayamam.
}
