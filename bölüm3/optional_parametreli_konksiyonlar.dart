/*
* methodlarımıza geçtiğimiz parametrelerin isteğe bağlı olmasını yani verilse dde olur verilmese de olur gibi durumlarda süslü ve köşeli parantez kullanırız.
* eğer köşeli parantez [] kullanırsak bu ilgili parametrelerin methoda gönderilmesi zorunluluğunu ortadan kaldırır.
* eğer süslü parantez {} kullanırsak burda da parametreler isteğe bağlıdır.ama bu parametreleri belirtirken sıralama önemini kaybeder ve de parametreleri geçerken isimlerini vermek zorunda kalırız.
* ayrıca method tanımlarında parametrelere = diyerek varsayılan değerler atayabiliriz. Bu değerler sayesinde eğer kullanıcı method parametrelerini atamışsa bu varsayılan değerler kullanılır.
 */

void main(List<String> args) {
  // int toplam = sayilariTopla(4, 5, 6);
  /* int toplam = sayilariTopla(2, 3);
  int toplam2 = sayilariTopla(2, 7, 9);
  *sayi 3 için illa yaz demiyor.ancak istersen yazabilirsin.
  print("toplam $toplam");
  print("toplam2 $toplam2");*/

  int toplam = sayilariTopla(9, sayi2: 5, sayi1: 8);
  print("toplam $toplam");
// parametreleri ister geç ister geçme çünkü hepsi opsiyonlandı.ancak geçersen ismini verme zorundasın.

  int hacim = hacimHesapla(boy: 5, en: 3, yukseklik: 4);
  print("hacim $hacim");
}

// required parameter( sırayla atanıyor)
/*int sayilariTopla(int sayi1, int sayi2, int sayi3) {
  return sayi1 + sayi2 + sayi3;
}
// optional(kullanıcı isterse girmeyebilir bu ifadeleri köşeli parantezler ile belirtiyoruz)
int sayilariTopla(int sayi1, [int sayi2 = 0, int sayi3 = 0]) {
  return sayi1 + sayi2 + sayi3;
  //sayi3 null değer olursa bu şekilde toplayamazsın
}*/

// optional named
int sayilariTopla(int sayi4, {int sayi1 = 0, int sayi2 = 0, int sayi3 = 0}) {
  return sayi1 + sayi2 + sayi3 + sayi4;
}
//kullanıcının hiçbir değer girmemesine karşılık varsayılan olarak 0 alıyoruz.
// NOT: hem köşeli hem süslü parantezi bir arada kullanamazsın.

int hacimHesapla({int en = 1, int boy = 1, int yukseklik = 1}) {
  return en * boy * yukseklik;
}
