// 코드의 진입점

void main(){
 Dog(age: 4, name:'토토');
} // end of main

// 선택적 매개변수 알아보기
// 선택적 위치 매개변수 (Optional Positiaonal Parameter)
// 선택적 명명 매개변수 (Optional Named Parameter)

// Dart 라는 언어는 기본적으로 null 값을 허용하지 않음
class Dog{
  String name;
  int age;
  // 여기서의 ? 는 옵셔널이라고 읽으며 null값 허용
  String? color;
  int? thirsty;

  // {}를 붙이면 선택적 명명 매개변수가 됨
  Dog({
    required this.name,
    required this.age,
    this.color,
    this.thirsty});

}

class Water{
  double amount = 2.0;

  void drink(){
    amount -= 0.1;
  }
}