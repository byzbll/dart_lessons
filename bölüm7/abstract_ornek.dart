void main(List<String> args) {
  // VeriTabani db = oracleDB(); tek değiştirmem gereken yer
  VeriTabani db = firebaseDB();

  db.userDelete();
  db.userSave();

  userGuncelle(db);
}

void userGuncelle(VeriTabani veriTabani) {
  veriTabani.userUptade();
}

abstract class VeriTabani {
  void userSave();
  void userUptade();
  void userDelete();
}

class oracleDB extends VeriTabani {
  @override
  void userDelete() {
    print("oracle db den user silindi");
  }

  @override
  void userSave() {
    print("oracle db den user kaydedildi");
  }

  @override
  void userUptade() {
    print("oracle dbdeki user güncellendi");
  }
}

class firebaseDB extends VeriTabani {
  @override
  void userDelete() {
    print("firebase db den user silindi");
  }

  @override
  void userSave() {
    print("firebase db den user kaydedildi");
  }

  @override
  void userUptade() {
    print("firebase dbdeki user güncellendi");
  }
}
