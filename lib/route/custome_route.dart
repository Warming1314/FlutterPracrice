import 'package:flutter/material.dart';

//自定义路由方法，集成通用路由的构造器类，继承后重写父类的CustomRoute构造方法
//FadeTransition:渐隐渐现过渡效果，主要设置opactiy（透明度）属性，值是0.0-1.0。
//animate :动画的样式，一般使用动画曲线组件（CurvedAnimation）。
//curve: 设置动画的节奏，也就是常说的曲线，Flutter准备了很多节奏，通过改变动画取消可以做出很多不同的效果。
//transitionDuration：设置动画持续的时间，建议再1和2之间。
class CustomRoute extends PageRouteBuilder {
  final Widget widget;
  CustomRoute(this.widget)
    :super(
      transitionDuration: const Duration(seconds: 1),
      pageBuilder:(
        BuildContext context,
        Animation<double> animation1,
        Animation<double> animation2
      ){
        return widget;
      },
     transitionsBuilder:(
          BuildContext context,
          Animation<double> animation1,
          Animation<double> animation2,
          Widget child){
            return FadeTransition(
              opacity: Tween(begin:0.0,end :1.0).animate(CurvedAnimation(
                  parent:animation1,
                  curve:Curves.fastOutSlowIn
              )),
              child: child,
            );
        } 
  );
}