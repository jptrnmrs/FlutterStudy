// 믹스인 사용해보기
// 여러 계층에서 코드를 재사용할 수 있도록 하는 코드 조각이다.

mixin Engine {
  int power = 5000;
}

mixin Wheel {
  String wheelName = '4륜 구동 바퀴';
}

class BMW with Engine,Wheel{}

void main (){
  // 인스턴스화 시킴
  BMW bm1 = BMW();
  print(bm1.power);
  print(bm1.wheelName);

  // 상속구조 사용시 단일 상속 허용
  // 믹스인 사용시 여러 계층에서 코드 조각들을 편하게 재사용 가능
  // 단, mixin Engine이 인스턴스화 되는 것은 아니다.
  // Wheel wheel1 = Wheel(); 믹스인은 인스턴스화 시킬 수 없다.
}