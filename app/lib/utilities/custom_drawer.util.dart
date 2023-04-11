import 'package:flutter/material.dart';

import 'app_menu.util.dart';

class CustomDrawer extends StatefulWidget {
  final Widget child;
  static final String id = 'drawer';
  CustomDrawer({Key? key, required this.child}) : super(key: key);

  static CustomDrawerState? of(BuildContext context) =>
      context.findAncestorStateOfType<CustomDrawerState>();

  @override
  CustomDrawerState createState() => CustomDrawerState();
}

class CustomDrawerState extends State<CustomDrawer>
    with SingleTickerProviderStateMixin {
  static const Duration toggleDuration = Duration(milliseconds: 300);
  static const double maxSlide = 225.0;
  AnimationController? _animationController;
  static const double minDragStartEdge = 60;
  static const double maxDragStartEdge = maxSlide - 16;
  bool _canBeDragged = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: CustomDrawerState.toggleDuration);
  }

  void toggle() => _animationController!.isDismissed
      ? _animationController!.forward()
      : _animationController!.reverse();

  void _onDragStart(DragStartDetails details) {
    bool isDragOpenFromLeft = _animationController!.isDismissed &&
        details.globalPosition.dx < minDragStartEdge;
    bool isDragCloseFromRight = _animationController!.isCompleted &&
        details.globalPosition.dx > maxDragStartEdge;

    _canBeDragged = isDragOpenFromLeft || isDragCloseFromRight;
  }

  void _onDragUpdate(DragUpdateDetails details) {
    if (_canBeDragged) {
      double delta = details.primaryDelta! / maxSlide;
      _animationController!.value += delta;
    }
  }

  void _onDragEnd(DragEndDetails details) {
    double _kMinFlingVelocity = 365.0;
    if (_animationController!.isDismissed || _animationController!.isCompleted) {
      return;
    }
    if (details.velocity.pixelsPerSecond.dx.abs() >= _kMinFlingVelocity) {
      double visualVelocity = details.velocity.pixelsPerSecond.dx /
          MediaQuery.of(context).size.width;
      _animationController!.fling(velocity: visualVelocity);
    } else if (_animationController!.value < 0.5) {
      close();
    } else {
      open();
    }
  }

  void close() => _animationController!.reverse();

  void open() => _animationController!.forward();

  void toggleDrawer() => _animationController!.isCompleted ? close : open();

  @override
  void dispose() {
    _animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var myDrawer = AppMenu();
    return WillPopScope(
      onWillPop: () async {
        if (_animationController!.isCompleted) {
          close();
          return false;
        }
        return true;
      },
      child: GestureDetector(
        onTap: toggleDrawer,
        onHorizontalDragStart: _onDragStart,
        onHorizontalDragUpdate: _onDragUpdate,
        onHorizontalDragEnd: _onDragEnd,
        child: AnimatedBuilder(
          animation: _animationController!,
          child: widget.child,
          builder: (context, child) {
            double animValue = _animationController!.value;
            double slideAmount = maxSlide * animValue;
            double contentScale = 1 - (animValue * 0.3);
            return Stack(
              children: [
                myDrawer,
                Transform(
                    transform: Matrix4.identity()
                      ..translate(slideAmount)
                      ..scale(contentScale, contentScale),
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: _animationController!.isCompleted ? close : null,
                      child: child,
                    ))
              ],
            );
          },
        ),
      ),
    );
  }
}
