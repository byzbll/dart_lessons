//kendi istisna yapılarımı oluşturabilir miyim?
//amacım kullanıcıyı uyarmak.
//hatayı çağrıldığı yerden yakalamam lazım.
void main(List<String> args) {
  try {
    Ogrenci emre = Ogrenci(-5);
    print(emre.yas); //elseye girmediğinden yaşa sıfır atanıyor.
  } on AgeException catch (e) {
    //genel catch yapısında mesaja erişemiyorum.
    print(e.mesaj);
  } finally {
    print("program bitti");

    try {
      Ogrenci emre = Ogrenci(-5);
      print(emre.yas);
    } catch (e) {
      print(e); //genel  catch yapısında baskıladığımı yazıyor.
    }
  }
// "e" o an fırlatılan hatayla ilgili nesnedir.
}

class AgeException implements Exception {
  String mesaj;
// bu bir sınıf olduğundan bunun da constructor'ı var.
//kullanıcının mesaj yazmasını isteğe bağlı kılabilirim
  AgeException({this.mesaj = "AgeException"}); //default(varsayılan)

  @override
  String toString() {
    //baskılıyordu.
    return "hatanın tostring metotu çalıştı";
  }
}

class Ogrenci {
  int yas = 0;

  Ogrenci(int yas) {
    if (yas < 0) {
      //  print("yas negatif olamaz");(kullanıcıyı ciddi bir şekilde uyarmak için.)

      throw AgeException(mesaj: ' AgeException - Yaş negatif olamaz');
      //mesajı yazmadığımda yukarıdaki varsayılan değer kullanılıyor.
    } else {
      this.yas = yas;
    }
  }
}
