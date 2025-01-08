// 추상클래스
abstract class Shape{
  double getArea();  // 메서드에 구현부(바디)가 없다면 추상메서드
}

class Circle implements Shape{
  final double radius;

  Circle(this.radius); // 생성자는 가능한 축약형으로 만들자

  // 면적을 구하는 메서드
  @override
  double getArea() => radius*radius*3.14;
}

class Rectangle implements Shape{
  final double width;
  final double height;

  Rectangle(this.width, this.height);

  // 면적을 구하는 메서드
  @override
  double getArea() => width*height;
}

// 동적 바인딩을 활용한 함수를 설계해보자.
// 전역함수
void calculateArea(Shape s){
  print(s.getArea());
}

void main(){
  Shape myCircle=Circle(5.0);
  Shape myRectangle=Rectangle(4.0, 6.0);

  calculateArea(myCircle);
  calculateArea(myRectangle);
}