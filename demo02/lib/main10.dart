// 코드의 진입점
void main(){

  // Dog d1 = new Dog(); // 인스턴스화되었다.
  Dog d1 = Dog(); // new 키워드를 대부분 생략한다

  print("강아지 이름 : ${d1.name}");
  print("강아지 나이 : ${d1.age}");
  print("강아지 색상 : ${d1.color}");
  print("강아지 갈증 : ${d1.thirsty}");

  //d1.thirsty = 50;
  d1.drinkWater();
  d1.drinkWater();
  d1.drinkWater();
  d1.drinkWater();
  d1.drinkWater();
  print("강아지 갈증 : ${d1.thirsty}");

} // end of main

// 접근제어지시자 미기입시 public / _들어갈 시 private. 외의 다른 접근제어지시자 존재 X
class Dog{
  // 변수의 선언과 동시에 초기화 (값을 넣어 전에 들어가있던 쓰레기값을 없애는 것)
  String name = '토토';
  int age = 5;
  String color = 'black';
  int thirsty = 100;

  void drinkWater(){
    thirsty -= 10;
    print("${name}가 물을 마셨습니다.");
    print("현재 갈증도 : ${thirsty}");
  }

}

class water{
  double amount = 2.0;

  void drink(){
    amount -= 0.1;
  }
}