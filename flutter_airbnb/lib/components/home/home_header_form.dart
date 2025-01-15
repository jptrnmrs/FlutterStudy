import 'package:flutter/material.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';

class HomeHeaderForm extends StatelessWidget {
  const HomeHeaderForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: gap_m),
      child: Align(
        alignment: Alignment(-0.6, 0),
        child: Container(
          width: 420,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
            child: Form(
                child: Column(
              children: [
                SizedBox(
                    child: Column(
                  children: [
                    Text(
                      "모두의 숙소에서 숙소를 검색하세요.",
                      style: h4(),
                    ),
                    Text(
                        "혼자하는 여행에 적합한 개인실부터 여럿이 함께하는 여행에 좋은 '공간전체' 숙소까지, 모두의 숙소에 다 있습니다.",
                      style: body1(),
                    )
                  ],
                )),
                SizedBox(
                  child: Text("data"),
                ),
                SizedBox(
                  child: Text("data"),
                ),
              ],
            )),
          ),
        ),
      ),
    );
  }
}
