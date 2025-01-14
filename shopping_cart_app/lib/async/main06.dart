

void main()async{

  // 소화 2 방식 then

  addNumber2(10, 5).then((value)=>print("결과값 출력 : ${value}"));
  print("main() 함수 종료");

}

Future<int> addNumber2(int n1, int n2){
  return Future.delayed(Duration(seconds: 3),()=> n1+n2);
}