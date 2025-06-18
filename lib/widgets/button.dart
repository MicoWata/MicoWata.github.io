import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:hello/tool.dart';

class Jumper extends StatefulWidget {
  final VoidCallback onPressed;
  final Widget child;
  final bool master;

  const Jumper({
    super.key,
    required this.onPressed,
    required this.child,
    required this.master,
  });

  @override
  State<Jumper> createState() => _JumpingButtonState();
}

class _JumpingButtonState extends State<Jumper>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late Animation<Color?> _colorAnimation;
  bool _isHovered = false;

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

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    _colorAnimation = TweenSequence<Color?>([
      TweenSequenceItem(
        tween: ColorTween(
          begin: widget.master ? theme.onSurface : theme.surfaceContainer,
          end: widget.master ? theme.surfaceContainerHighest : theme.outline,
        ),
        weight: 1,
      ),
      TweenSequenceItem(
        tween: ColorTween(
          begin: widget.master ? theme.surfaceContainerHighest : theme.outline,
          end: widget.master ? theme.onSurface : theme.surfaceContainer,
        ),
        weight: 1,
      ),
    ]).animate(_controller);

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: () {
          _controller.forward(from: 0);
          widget.onPressed();
        },
        child: AnimatedBuilder(
          animation: _controller,
          builder:
              (context, child) => Transform.translate(
                offset: Offset(0, _animation.value),
                child: Container(
                  constraints: BoxConstraints(minWidth: 80, maxWidth: 150),
                  width: width(0.05, context),
                  height: kToolbarHeight * 0.6,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20),
                      color:
                          _isHovered
                              ? _colorAnimation.value
                              : widget.master
                              ? theme.onSurfaceVariant
                              : theme.surfaceContainerLow,
                    ),
                    child: widget.child,
                  ),
                ),
              ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
