// 코드의 진입점

void main(){
  Dog d1 = Dog();
  Water w1 = Water();
  d1.drinkWater(w1);
  d1.drinkWater(w1);
  d1.drinkWater(w1);

} // end of main

// 접근제어지시자 미기입시 public / _들어갈 시 private. 외의 다른 접근제어지시자 존재 X
class Dog{
  // 변수의 선언과 동시에 초기화 (값을 넣어 전에 들어가있던 쓰레기값을 없애는 것)
  String name = '토토';
  int age = 5;
  String color = 'black';
  int thirsty = 100;
  void drinkWater(Water w1){
    w1.drink();
    thirsty -= 10;
    print("${name}가 물을 마셨습니다.");
    print("현재 갈증도 : ${thirsty}");
    print("남은 물 : ${w1.amount}L");
  }

}

class Water{
  double amount = 2.0;

  void drink(){
    amount -= 0.1;
  }
}