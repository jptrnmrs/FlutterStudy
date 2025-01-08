// 믹스인을 인스턴스화 시킬 때 사용하는 문법

mixin class Engine {
  int power = 5000;
}

mixin class Wheel {
  String wheelName = '4륜 구동 바퀴';
}

class BMW with Engine,Wheel{}

void main () {
  // 인스턴스화 시킴
  BMW bm1 = BMW();
  Engine e = Engine(); // 믹스인 클래스는 인스턴스화가 가능하다
}