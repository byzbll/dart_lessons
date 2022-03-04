class Musteri {
  int? _musteriNo;
  // ya varsayılan olarak değer atayacaktık ya da null olabileceğini söyleyecektik.

  /* Musteri(int musteriNo) {
    this.musteriNo = musteriNo;
  // biri sınıf değişkeni biri parametre olduğundan thisi kullandık.
  }*/

  // Musteri(this._musteriNo); // KISA YOL.(kullanıcının bana verdiği her integerı kabul edemem.)

  Musteri(int musteriNo) {
    // ÇOK ANLAYAMADIM.
    _musteriNoKontrol(musteriNo);
  }

  String get musteriNoSoyle {
    return "Musteri no : $_musteriNo ";
  }

  String get musteriNoSoyle2 => "Musteri no : $_musteriNo "; // At Arrow.

  // veri atamaya yarayan fonksiyonlara setter denir.yazımı biraz farklıdır.
  void set musteriNoAta(int no) {
    if (no > 300) {
      _musteriNo = no;
    } else {
      return;
    }
  }

  void _musteriNoKontrol(int no) {
    //50 tane de müşteri olsa artık tek kodla ...
    if (no > 300) {
      _musteriNo = no;
    } else {
      return;
    }
  }

  void bilgileriYazdir() {
    print("muşteri oluşturuldu musteri no : $_musteriNo");
  }
}
