
import 'package:flutter/material.dart';
import 'pages/home_screen.dart';
import 'pages/discover_screen.dart';
import 'pages/venture_screen.dart';
import 'pages/me_screen.dart';
import 'pages/each_view.dart';

//stful 快速生成代码
//第一部分是继承StatefulWidget,第二部分是继承于State。State才是重点，主要的代码会在这里
class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _BottomNavigationColor = Colors.blue;
  int _currentIndex = 0;
  List<Widget> list = List();

  @override
    void initState() {
      // TODO: implement initState
      list
       ..add(HomeScreen())//..add是Dart语言的..语法，返回调用者本身
       ..add(DiscoverScreen())
       ..add(VentureScreen())
       ..add(MeScreen());
      super.initState();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: _BottomNavigationColor),
            title: Text('首页',style: TextStyle(
              color: _BottomNavigationColor
            )),
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.email, color: _BottomNavigationColor),
            title: Text('发现',style: TextStyle(
              color: _BottomNavigationColor
            )),
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.pages, color: _BottomNavigationColor),
            title: Text('创投',style: TextStyle(
              color: _BottomNavigationColor
            )),
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.menu, color: _BottomNavigationColor),
            title: Text('我的',style: TextStyle(
              color: _BottomNavigationColor
            )),
        ),
        ],
        currentIndex: _currentIndex,
        onTap: (int index){
          setState(() {
           _currentIndex = index;     
                    });
        },
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}


//改进版
class BottomAppBarDemo extends StatefulWidget {
  @override
  _BottomAppBarDemoState createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo> {
  List<Widget> _eachView;//创建视图数组
  int _index = 0;
  @override
    void initState() {
      // TODO: implement initState
      super.initState();
      _eachView = List();
      _eachView..add(EachView('Home'))..add(EachView('Me'));
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
            return EachView('New Page');
          }));
            // Navigator.push(context, new MaterialPageRoute(
            //   builder: (context){
            //     return EachView('New Page');
            //   }
            // ));
        },
        tooltip: '悬浮按钮',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.white,
              onPressed: (){
              setState(() {
                    _index = 0;      
               });
              },
            ),
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.white,
              onPressed: (){
                setState(() {
                    _index = 1;        
                });
              },
            )
          ],
        ),
      ),
    );
  }
}