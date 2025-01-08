abstract class Shape{
  dynamic getArea();
  dynamic getVolume();
}

class Sphere implements Shape{
  final double r;

  Sphere(this.r);

  @override
  getArea() => 4 * 3.14 * r * r ;

  @override
  getVolume() => 3 / 4 * 3.14 * r * r * r;
}

class Hexahedron implements Shape{
  final double x;
  final double y;
  final double h;

  Hexahedron(this.x, this.y, this.h);

  @override
  getArea() => 2 * x * y + 2 * x * h + 2 * y * h;

  @override
  getVolume() => x * y * h;
}

void calculateArea (Shape s){
  print(s.getArea());
}
void calculateVolume(Shape s){
  print(s.getVolume());
}

void main(){

}