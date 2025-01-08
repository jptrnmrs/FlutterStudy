
class Animal{
  final String name;
  Animal(this.name){}
}

class Dog extends Animal {
  Dog(String name):super(name){}
  void bark(){
    print("${name} : 멍멍!");
  }
}

void main (){
  Animal a1 = Dog("봉구");
  (a1 as Dog).bark();
}