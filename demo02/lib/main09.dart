
// 화살표 함수 (람다 표현식)
void main(){
  int num1 = 500;
  int num2 = 10;

  print("num1 ::: ${num1}");
  print("num2 ::: ${num1}");
  print("num1+num2 ::: ${add(num1,num2)}");
  print("num1+num2 ::: ${add2(num1,num2)}");
  print("num1-num2 ::: ${sub(num1,num2)}");
  print("num1*num2 ::: ${mul(num1,num2)}");
  print("num1/num2 ::: ${div(num1,num2)}");


  print("반지름이 5인 원의 넓이 ::: ${circle(5.0)}");

  print("가로가 3, 세로가 4인 직사각형의 넓이 ::: ${rectangle(3.0, 5.0)}");

}
// 재활용하고 싶다면 함수로 만들기
// 만약 좀 더 간결하게 만들고 싶다면 화살표 함수로 만들기
//(선언부){구현부}
// 구현부 안이 복잡하면 익명함수를 사용하는 게 좋으나 간단하다면 화살표함수가 간단
int add(int n1,int n2){
  return n1+ n2;
}
int add2(int n1, int n2) => n1 + n2;
int sub(int n1, int n2) => n1 - n2;
int mul(n1, n2) => n1 * n2;
double div(n1, n2) => n1 / n2;


double circle(r) => r * r * 3.14;
double rectangle(w,h) => w*h;