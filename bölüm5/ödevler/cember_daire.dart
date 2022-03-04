class CemberDaire {
  int _yariCap = 1; // kullanıcı yarıçap değerini vermezse varsayılan ata.
  double _PI = 3.14;
  // bunların değişmesini istemiyorum , constructor'da mutlaka versin.

  CemberDaire(int yariCap) {
    _yariCapKontrol = yariCap;
    // CemberDaire(this._yariCap ); dersen "-5"değeri direkt kutunun içine yazılır.
  }

  // kontroller yapmak için setter metotlardan yararlanabiliyorduk.
  // amacı kullanıcının girdiği değeri alacak ve kontrolden geçirecek.
  void set _yariCapKontrol(int deger) {
    if (deger > 0) {
      _yariCap = deger;
    } else {
      _yariCap = 1;
    }
  }

  double cevreHesapla() {
    return 2 * _PI * _yariCap;
  }

  double alanHesapla() {
    return _PI * _yariCap * _yariCap;
  }
}
