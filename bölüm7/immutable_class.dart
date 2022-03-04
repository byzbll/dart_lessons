void main(List<String> args) {
  const Student emre = Student(5, "emre");
  const Student emre2 = Student(5, "emre");
  // final Student emre2 = const Student(5, "emre");(diyebiliriz)
  var emre3 = const Student(5, "emre ");
  //hepsi aynı şeyi gösteriyor
  emre3 = Student(5, "emre"); // var yazdığında değiştirebileceğini unutma

  if (emre2 == emre3) {
    print("eşit");
  } else {
    print("eşit değil");
  }
}
// immutable değişmez demek.

class Student {
  final int id;
  final String isim;

  const Student(this.id, this.isim);
}
