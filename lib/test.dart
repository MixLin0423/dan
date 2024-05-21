import 'package:flutter/material.dart';


class test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button Animation Demo',
      home: ButtonScreen(),
    );
  }
}

class ButtonScreen extends StatefulWidget {
  @override
  _ButtonScreenState createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> with TickerProviderStateMixin {
  // 控制动画的动画控制器
  late AnimationController _animationController;
  // 动画的值，从1.0开始，以便按钮一开始就是可见的
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    // 初始化动画控制器，设置动画时长
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 5000),
    );
    // 定义从1.0到0.0的动画，这样按钮会从可见变为不可见
    _animation = Tween<double>(begin: 10.0, end: 0.5).animate(_animationController);
  }

  @override
  void dispose() {
    // 当小部件被移除时，释放动画控制器
    _animationController.dispose();
    super.dispose();
  }

  // 触发动画的方法
  void _onButtonPressed() {
    if (!_animationController.isAnimating) {
      // 如果动画没有在运行，则开始动画
      _animationController.forward(from: 10.0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Animation Demo'),
      ),
      body: Center(
        // 使用ScaleTransition包裹一个占位的Container，使其能够缩放
        child: ScaleTransition(
          scale: _animation,
          child: Container(
            height: _animationController.value+100,
            width:  _animationController.value+100,
            child: MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('Click Me'),
              onPressed: () {
                // 点击按钮后触发动画
                _onButtonPressed();
              },
            ),
          ),
          // 使用动画控制器控制缩放

        ),
      ),
    );
  }
}