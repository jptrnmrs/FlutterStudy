
class Burger{
  String? name;
  Burger(String? name){
    print('버거 생성자 호출()');
  }
}
class CheeseBurger extends Burger {
  // 자식이 생성되기 전에 부모가 먼저 생성되어야 자식이 존재할 수 있다
  // CheeseBurger(String? name){
  //   // super(); 부모 클래스 생성자 호출
  //   super(name);
  // }

  // initialize keyword를 살펴보자
  CheeseBurger(String? name):super(name){

  }
}

void main (){

}