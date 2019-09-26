import 'package:flutter/material.dart';
import 'package:flutter_project/route/custome_route.dart';

class  FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: new Text(
          'FirstPage',
          style: TextStyle(
            fontSize: 36.0
          )
        ),
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(Icons.navigate_next,color: Colors.white,size: 64.0),
          onPressed: (){
            Navigator.of(context).push(CustomRoute(SecondPage()));
            // Navigator.of(context).push(CustomRoute(
            //   builder: (BuildContext context){
            //     return SecondPage();
            //   }
            // ));
          },
        ),
      ),
    );
  }
}
//AppBar的elevation属性，这个属性是AppBar滚动时的融合程度，一般有滚动时默认是4.0，0.0就是和main完全融合了
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: new Text('SecondPage', style: TextStyle(
          fontSize: 36.0
        )),
        backgroundColor: Colors.pinkAccent,
        leading: Container(),
        elevation: 0.0,
      ),
    );
  }
}