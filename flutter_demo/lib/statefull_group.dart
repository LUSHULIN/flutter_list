import 'package:flutter/material.dart';

class Statefull_group extends StatefulWidget {
  @override
  _Statefull_groupState createState() => _Statefull_groupState();
}

class _Statefull_groupState extends State<Statefull_group> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('StatefulWidget与基础组件'),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.green,
                ),
                activeIcon: Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
                title: Text('首页'),
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.list, color: Colors.green),
                  activeIcon: Icon(Icons.list, color: Colors.blue),
                  title: Text('列表'))
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Text('点我'),
          ),
          body: _currentIndex == 0
              ? RefreshIndicator(
                  child: ListView(
                    children: <Widget>[
                      Container(),
                    ],
                  ),
                  onRefresh: _handleRefresh,
                )
              : Text('list')),
    );
  }

  Future<Null> _handleRefresh() async {
    await Future.delayed(Duration(microseconds: 200));
    return null;
  }
}
