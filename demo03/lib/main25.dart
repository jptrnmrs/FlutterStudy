// 팀장은 Animal 추상 클래스를 구현해서 만들어달라고 부탁했어야 했다.
// 팀장이 먼저 설계 했었어야 하는 것
abstract class Animal {
  void performAction();
}

// 추상클래스를 구현할 때 implements를 사용한다.
class Dog implements Animal{
  @override
  void performAction() {
    print("멍멍 배고파");
  }
}

class Cat implements Animal{
  @override
  void performAction() {
    print("야옹 배고파");
  }
}

class Fish implements Animal{
  @override
  void performAction() {
    print("뻐끔뻐끔 배고파");
  }
}

// 한 단계 더 실력을 쌓아보자
// 동적 바인딩이란 뭘까?
void start(Animal a){
  a.performAction();
}
void start1(Cat c){
  c.performAction();
}
void start2(Dog c){
  c.performAction();
}
void start3(Fish c){
  c.performAction();
}


void main(){
  start(Dog());
  start(Cat());
  start(Fish());
}