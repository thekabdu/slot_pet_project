import 'package:flutter/cupertino.dart';

class WrapperButton extends StatelessWidget {
  const WrapperButton({
    super.key,
    required this.child,
    this.onPressed,
    this.alignment,
    this.padding = const EdgeInsets.all(0),
  });

  final Widget child;
  final EdgeInsets padding;
  final Alignment? alignment;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 0,
      padding: padding,
      onPressed: onPressed,
      alignment: alignment ?? Alignment.centerLeft,
      child: child,
    );
  }
}
