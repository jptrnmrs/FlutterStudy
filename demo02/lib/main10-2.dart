// 코드의 진입점

void main(){

} // end of main

// Dart 라는 언어는 기본적으로 null 값을 허용하지 않음
class Dog{
  String name;
  int age;
  String color;
  int thirsty;

  Dog(this.name, this.age, this.color, this.thirsty); // 생성자 구현부분 생략 가능
// Dart에서는 생성자 오버로딩을 지원하지 않는다.

}

class Water{
  double amount = 2.0;

  void drink(){
    amount -= 0.1;
  }
}