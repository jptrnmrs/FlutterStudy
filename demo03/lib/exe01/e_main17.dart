
void main(){

  Player p1 = Wizard("마법사");
  Player p2 = Warrior("전사");

  p1.skill();
  p2.skill();
}

class Player{
  String? name;
  int? power;
  int? hp;

  void skill(){
    print("${name}가 스킬을 사용합니다.");
  }
  Player(this.name){}
}

class Wizard extends Player{

  Wizard(String? name) : super(name){}

  @override
  void skill(){
    super.skill();
    print("${this.name}가 얼음 마법 공격을 시전합니다.");
  }
}
class Warrior extends Player{

  Warrior(String? name) : super(name){}
  @override
  void skill(){
    super.skill();
    print("${this.name}가 더블 콤보 공격을 시전합니다.");
  }
}