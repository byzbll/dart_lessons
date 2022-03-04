/*
* Dart optionally typed bir dildir.Yani veri tiplerini belirtmek isteğe bağlıdır.
* Sürekli kullanılan koleksiyon yapıları(liste,map,set) varsayılan olarak heterojendir.Yani aynı koleksiyon yapısında farklı türde verileri saklayabilirsiniz.Ama yapmalı mısınız?
*
* Generic tipler sayesinde bir yapıda hangi tür verilerin olacağını söyleriz.Böylece bu yapılar type-safe olur,compile time da hatalı veri girişi tespit edilir ve bize hatamız söylenir.Böylece runtimeda cıkabilecek hataların önüne geçilir.
*
* Generic tipler <> içinde belirtilir.List<String> ifadesi bu listede sadece String veriler olacağı anlamı taşır.Bu listeye String dışında bir veri eklenirse daha programı çalıştırmadan hata alırız ve düzeltmemiz gerekir.Böylece daha güvenle kod yazmış oluruz.
*
* Generic'ler dartta bulunan çoğu yapıda zaten vardır.List,map,set,future,stream gibi...Kendi oluşturduğumuz sınıflarda ve metotlarda da genericleri uygulayabilirsiniz.Böylece hem daha güvenli kod yazmış olursunuz hem de benzer amaçları gerçekleştiren kod yapılarını tek bir yapıda toplayabilirsiniz.
 */
// liste.map ve set yapılarını tekrar et.
void main(List<String> args) {
  List liste = [];
  liste.add("emre");
  liste.add("beyza");

  yazdir(liste);

// List<E> ==> Element
// map<K>  ==> Key
// map<K,V> ==> Value
// R ==> Methodların return tipleri için
// Ogrenci<T xtends Insan>
}

yazdir(List list) {
  print(list[1].length); //int bir sayının length'i olmaz.
}
