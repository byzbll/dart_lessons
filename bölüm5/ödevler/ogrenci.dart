class Ogrenci {
  int id;
  int notDegeri;
// isimlendirilmiş parametre kullanalım.
// isimlendirilmiş olarak parametre geçeceksen bunların mutlaka açık olması lazım.

  Ogrenci({this.id = 1, this.notDegeri = 1});
  //bu değerler opsiyoneldir.yani kullanıcı isterse verir isterse vermez.Ancak veriyorsa da isimlendirilmiş bir şekilde verimeli.

// direkt olarak nesneyi ekrana bastırmak istiyorsan tetikleniyor.

  @override
  String toString() {
    return "ID :  $id notdeğeri $notDegeri ";
  }
}
