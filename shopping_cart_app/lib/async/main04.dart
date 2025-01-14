//  async / await는 비동기 처리를 마치 동기적 방식으로 바꿔준다

void main() async{
  // 비동기 프로그래밍 연습
  // 동기성 - 모든 코드가 순타적으로 진행되는 형태
  // 비동기성 - 코드가 동시다발적으로 실행, 순차 실행을 보장할 수 없다.

  // 키워드 묶음
  // async/await --> Future : 1회만 응답을 돌려받는 경우 사용한다.

  print('task1...........');
  var data1 = await fetchData();
  print('task2...........');
  print('task3...........');

  print("data1 확인 : ${data1}");
}

Future<String> fetchData(){
  return Future.delayed(Duration(seconds: 3),(){
    return '3초가 지났습니다.';
  });
}