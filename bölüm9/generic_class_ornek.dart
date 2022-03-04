// Stack = yığın yapısı(son giren ilk çıkar)
//aynı dosyada isen private elemanlar gözüküyordu.
import 'my_stack.dart';

void main(List<String> args) {
  MyStack myStack = MyStack();
  myStack.push(5);
  myStack.push("emre");
  myStack.push(true);

  print(myStack.pop()); //en sondaki elemanı çıkartacak.
  print(myStack.pop());
  print(myStack.pop());

  IntMyStack intMyStack = IntMyStack();
  intMyStack.push(5);

  StringMyStack stringMyStack = StringMyStack();
  stringMyStack.push("emre");

  /* GenericStack genericStack = GenericStack();
  genericStack.push("emre");
  genericStack.push(5);(bu şekilde hata vermeyecek.) */

  GenericStack<String> genericStack = GenericStack();
  genericStack.push("emre");
  print(genericStack.pop()); //emreyi çıkardı ve ekledi.
  //tip kontrolü yapabileceğimiz bir sınıf oluşturmuş olduk.
  //yazmazsan bir işe yaramaz(dynamic olarak alır)
}
