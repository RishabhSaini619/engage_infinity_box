import 'package:engage_infinity_box/model/basicProductData.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {




  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {



  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        titleTextStyle: Theme.of(context).textTheme.titleMedium,
      ),
      //body: ,
    );
  }
}
