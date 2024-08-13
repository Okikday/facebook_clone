import 'package:flutter/material.dart';

class BackButton extends StatefulWidget {
  late final void Function()? onpressed;
  BackButton({
    super.key,
    this.onpressed,
  });

  @override
  State<BackButton> createState() => _BackButtonState();
}

class _BackButtonState extends State<BackButton> {
  @override
  Widget build(BuildContext context) {
    widget.onpressed = () => Navigator.of(context).pop();
    return IconButton(
        onPressed: () => widget.onpressed,
        icon: const Icon(Icons.arrow_back),
      color: Theme.of(context).colorScheme.primary,


    );
  }
}
