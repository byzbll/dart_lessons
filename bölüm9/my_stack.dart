class MyStack {
  List _listem = [];

//yığın yapılarında eleman eklemek için "push" diye bir yapı kullanıyoruz.çıkarmalara da" pop" deniyor.
  push(yeniEleman) {
    _listem.add(yeniEleman);
  }

//geriye çıkarılan elemanı döndürür.(ancak veri türünü bilmiyorum.)
  pop() {
    return _listem.removeLast();
  }
}

class IntMyStack {
  List<int> _listem = <int>[];

  void push(int yeniEleman) {
    _listem.add(yeniEleman);
  }

  int pop() {
    return _listem.removeLast();
  }
}

class StringMyStack {
  List<String> _listem = <String>[];

  void push(String yeniEleman) {
    _listem.add(yeniEleman);
  }

  String pop() {
    return _listem.removeLast();
  }
}

class GenericStack<T> {
  //sana ne geleceğini bilmiyorum.
  List<T> _listem = <T>[];

  void push(T yeniEleman) {
    _listem.add(yeniEleman);
  }

  T pop() {
    //çıkaracak ve çıkardığı elemanı döndürecek.
    return _listem.removeLast();
  }
}
