
class Burger{
  String? name;
  Burger(){
    print('버거 생성자 호출()');
  }
}
class CheeseBurger extends Burger {
  CheeseBurger(String name){
    print('치즈버거 생성자 호출');
    super.name=name;
  }
}

void main (){

}