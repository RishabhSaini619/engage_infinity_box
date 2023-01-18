import 'package:flutter/material.dart';

class UniversalContainerWidget extends StatefulWidget {

  Widget containerChild;
  double containerHeight;

  UniversalContainerWidget({required this.containerChild,required this.containerHeight,super.key});

  @override
  State<UniversalContainerWidget> createState() => _UniversalContainerWidgetState();
}

class _UniversalContainerWidgetState extends State<UniversalContainerWidget> {

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 100,
      width: double.infinity,
      alignment: Alignment.center,
      duration: const Duration(seconds: 5),
      curve: Curves.elasticOut,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
            color: Theme.of(context).colorScheme.secondary, width: 1),
      ),
      child: widget.containerChild,
    );
  }
}
