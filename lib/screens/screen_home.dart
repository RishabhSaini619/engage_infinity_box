import 'package:engage_infinity_box/screens/screen_cart.dart';
import 'package:flutter/material.dart';
import '../widgets/widget_product_grid.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/HomeScreen';

  const HomeScreen({super.key});

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
        actions: [
          IconButton(onPressed: () {
            Navigator.of(context).pushNamed(
              CartScreen.routeName,
            );
          }, icon: Icon(Icons.shopping_cart_sharp))
        ],
      ),
      body: AnimatedContainer(
        alignment: Alignment.center,
        duration: const Duration(seconds: 5),
        curve: Curves.elasticOut,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
              color: Theme.of(context).colorScheme.secondary, width: 1,),
        ),
        child: const ProductGridWidget(),
      ),
    );
  }
}
