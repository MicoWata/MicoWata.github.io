import 'package:flutter/widgets.dart';

class HoverableContainer extends StatefulWidget {
  final Color defaultColor;
  final Color hoverColor;
  final Widget child;
  double radius = 35;

  HoverableContainer({
    super.key,
    required this.defaultColor,
    required this.hoverColor,
    required this.child,
    radius,
  });

  @override
  State<HoverableContainer> createState() => _HoverableContainerState();
}

class _HoverableContainerState extends State<HoverableContainer> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) => setState(() => _isHovering = true),
      onExit: (event) => setState(() => _isHovering = false),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.radius),
          color: _isHovering ? widget.hoverColor : widget.defaultColor,
        ),
        child: widget.child,
      ),
    );
  }
}
