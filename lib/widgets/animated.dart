import 'dart:math' as math;

import 'package:flutter/material.dart';

class JumpingButton extends StatefulWidget {
  final VoidCallback onPressed;
  final Widget child;

  const JumpingButton({Key? key, required this.onPressed, required this.child})
    : super(key: key);

  @override
  State<JumpingButton> createState() => _JumpingButtonState();
}

class _JumpingButtonState extends State<JumpingButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  var color = Colors.deepOrange;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _animation = TweenSequence<double>([
      TweenSequenceItem(tween: Tween(begin: 0, end: -4), weight: 1),
      TweenSequenceItem(tween: Tween(begin: -4, end: 0), weight: 1),
    ]).animate(CurvedAnimation(parent: _controller, curve: Curves.bounceOut));
  }

  void _incrementEnter(PointerEvent details) {
    setState(() {
      //_enterCounter++;
    });
  }

  void _incrementExit(PointerEvent details) {
    setState(() {
      //_exitCounter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: _incrementEnter,
      child: GestureDetector(
        onTap: () {
          _controller.forward(from: 0);
          widget.onPressed();
        },

        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) => newMethod(),
          //Transform.rotate(
          //  angle: -math.pi / 12.0,
          //  child: Container(
          //    padding: const EdgeInsets.all(8.0),
          //    color: const Color(0xFFE8581C),
          //    child: const Text('Apartment for rent!'),
          //  ),
          //)
          //(context, child) =>
          //    Transform.rotate(angle: _animation.value, child: widget.child),
        ),
      ),
    );
  }

  Transform newMethod() {
    return Transform.translate(
      offset: Offset(0, _animation.value),
      child: widget.child,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
