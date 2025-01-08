
class Room{
  final String roomNumber;
  Room(this.roomNumber);

  void displayRoomInfo(){
    print("방 번호 : ${roomNumber}");
  }
}
class House{
  final String addr;
  final Room myRoom;
  House(this.addr, String roomNum) : myRoom=Room(roomNum);

  void displayHouseInfo(){
    print("집 주소 : ${addr}");
    myRoom.displayRoomInfo();
  }
}

class Apartment{
  final String buildingName;
  final List<Resident> residents;

  Apartment(this.buildingName) : residents =[];

  void addResident(Resident res){
    residents.add(res);
  }

  void displayApartment(){
    print("--------------------------");
    print("아파트 이름 : ${buildingName}");
    print("거주민 수 : ${residents.length}");
    print("--------------------------");
    for(var res in residents){
      res.displayResidentInfo();
    }
  }
}

class Resident {
  final String name;

  Resident(this.name);

  void displayResidentInfo() {
    print("거주민 이름 : ${name}");
  }
}

void main(){
   House home = House("베이커가","A202");
   home.displayHouseInfo();

   Apartment apt = Apartment("범향빌딩");
   Resident rs1 = Resident("김철학");
   Resident rs3 = Resident("최온유");

   apt.addResident(rs1);
   apt.addResident(rs3);

   apt.displayApartment();

   Resident rs2 = Resident("김근호");
   Resident rs4 = Resident("김민정");
   apt.addResident(rs2);
   apt.addResident(rs4);

   apt.displayApartment();
}