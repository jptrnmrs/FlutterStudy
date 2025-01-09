import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab>
    with SingleTickerProviderStateMixin {
  //멤버 변수
  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('프로필 탭 내부 클래스 init 호출');

    // length는 탭의 개수를 의미한다.
    // vsync는 자연스러운 애니메이션 전환을 위해서 TivkerProvider를 이용한다.
    _tabController = TabController(length: 2, vsync: this);
  }

  // build 메서드는 기본적으로 그림을 그릴 때 호출이 된다
  @override
  Widget build(BuildContext context) {
    print('11111111');
    return Column(
      children: [
        _buildTabBar(),
        Expanded(
          child: _buildTabBarView(),
        )
      ],
    );
  }

  TabBarView _buildTabBarView() {
    List<bool> isLike = [];
    return TabBarView(
      controller: _tabController,
      children: [
        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return Image.network('https://picsum.photos/id/${index + 10}/200');
          },
          itemCount: 40,
        ),
        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            isLike.add(false);
            return Column(
              children: [
                Image.network('https://picsum.photos/id/${index + 10}/300'),
                ListTile(
                  leading: IconButton(
                      onPressed: () {
                      }, icon: Icon(CupertinoIcons.heart)),
                )
              ],
            );
          },
          itemCount: 40,
        ),
      ],
    );
  }

  TabBar _buildTabBar() {
    return TabBar(
      controller: _tabController,
      tabs: [
        Tab(
          icon: Icon(Icons.grid_view_rounded),
        ),
        Tab(
          icon: Icon(Icons.view_day_rounded),
        ),
      ],
      indicatorColor: Colors.black87,
      labelColor: Colors.black87,
      overlayColor: WidgetStatePropertyAll(Colors.black12),
      unselectedLabelColor: Colors.black45,
    );
  }
}
