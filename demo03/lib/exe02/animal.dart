
class Animal{
  // 상수 (final) - 한 번은 반드시 초기화 되어야하는 변수
  final String name;

  // 생성자 (강제성)
  Animal(this.name);

}

class Dog extends Animal{

  Dog(String name) : super(name);
  void bark(){
    print("멍멍");
  }
}

void main (){
  Dog d1 = Dog("바둑이");
  print("${d1.name}");
  d1.bark();

  Dog d2 = Dog("흰둥이");
  print("${d2.name}");
  d2.bark();
}