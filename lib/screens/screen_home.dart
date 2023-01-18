import 'package:engage_infinity_box/screens/screen_cart.dart';
import 'package:engage_infinity_box/widgets/widget_search.dart';
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

  bool searchToggle = false;

  @override
  void initState() {
    super.initState();
    searchToggle = false;
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
        title: searchToggle == true ?  const SearchWidget():
        const Text('Home Screen'),
        titleTextStyle: Theme.of(context).textTheme.titleMedium,
        actions: [
          if (searchToggle == false) IconButton(
            onPressed: () {
              setState(() {
                searchToggle =true;
              });
            },
            icon: const Icon(
              Icons.search_sharp,
            ),
          )  ,
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                CartScreen.routeName,
              );
            },
            icon: const Icon(
              Icons.shopping_cart_sharp,
            ),
          ),
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
            color: Theme.of(context).colorScheme.secondary,
            width: 1,
          ),
        ),
        child: const ProductGridWidget(),
      ),
    );
  }
}
