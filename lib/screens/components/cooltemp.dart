import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constanins.dart';

class tempp extends StatelessWidget {
  const tempp({
    Key? key,
    required this.press,
    required this.isLock,
  }) : super(key: key);

  final VoidCallback press;
  final bool isLock;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: AnimatedSwitcher(
        duration: defaultDuration,
        switchInCurve: Curves.easeInOutBack,
        transitionBuilder: (child, animation) => ScaleTransition(
          scale: animation,
          child: child,
        ),
        child: isLock
            ? Image.asset(
          "assets/images/Cool_glow_2.png",
          key: ValueKey("lock"),
        )
            : Image.asset(
          "assets/images/Hot_glow_4.png",
          key: ValueKey("unlock"),
        ),
      ),
    );
  }
}
