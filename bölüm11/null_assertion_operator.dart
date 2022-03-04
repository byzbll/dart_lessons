/**
 * Eğer bir nullable tipin null olmadığından eminseniz, null assertion operator yani ! kullanabilirsiniz, böylece dart o değişkene non-nullable olarak davranır ve sorun kalmaz.
 * Bu işareti kullanınca şunu demiş olursunuz : değer null olmayacak bu yüzden bu değeri non-nullable bir değişkene atabilirsiniz.
 * 
 * Eğer bu düşüncede hatalıysanız/haksızsanız dart run-time da bir hata fırlatır.
 * Böylece programınız null hatalarına açılmış olur bu yüzden yüzde yüz kodunuzun null olmayacağından emin değilseniz bunu kullanmayın. 
 * 
 * Özetle ! koyduğunuzda dart'a şunu dersiniz : Biliyorum bu değişken null olabilir ama söz veriyorum ki null değer yok, o yüzden bunu null değer kabul etmeyen bir değişkene atayabilirsin.
 * 
 * Dart aynı scopeda ise o değişken nullable bile olsa null olup olmadığını anlayabilir.Farklı scopeda yani kapsamdaysa emin olamaz.
 */
int? nullOlabilirAmaDegil = 1;
void main(List<String> args) {
  List<int?> nullDegerTutanListe = [2, 3, null];

  int a = nullOlabilirAmaDegil!;
  //normalde null olabilecek bir yapı null olması mümkün olmayan bir değişkene atanamaz.ancak aynı methotta dart bunu anlıyor.
  int b = nullDegerTutanListe.first!;
  //listem zaten null değil.ilk eleman null olabilir.ama eminim ki null değil.
  int c = nullDondurebilirAmaDondurmeyecek()!.abs();
  //abs mutlak değerini buluyor.
}

int? nullDondurebilirAmaDondurmeyecek() {
  return 5;
}
