import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});


  final List<Chat> chatList = [
    Chat(Icons.sticky_note_2_outlined, "독서실", "@당신 숨 조금만 살살 쉬어주세요", "독서실에선 정숙합시다"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.black12,
                  child: Icon(Icons.people,color: Colors.black54,),
                ),
                title: Text('채팅방 ${index + 1}'),
                subtitle: Text('Read more...'),
                trailing: IconButton(
                    onPressed: () {
                      print("채팅방 ${index+1} 메시지 출력");
                    }, icon: Icon(Icons.navigate_next)),
              );
            },
            separatorBuilder: (context, index) => const Divider(
                  indent: 20,
                  endIndent: 20,
                  color: Colors.black12,
                ),
            itemCount: 20),
      ),
    );
  }
}

class Chat{
  final IconData mIcon;
  final String title;
  final String subtitle;
  final String action;

  Chat(this.mIcon,this.title,this.subtitle,this.action);
}