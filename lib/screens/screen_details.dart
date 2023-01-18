import 'package:flutter/material.dart';

import '../model/basicProductData.dart';

class DetailScreen extends StatefulWidget {
  static const routeName = '/DetailScreen';

  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen>
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

  Widget buildContainer(BuildContext context, String title, Widget body) {
    return AnimatedContainer(
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
      child: Column(
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          body,
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Screen'),
        titleTextStyle: Theme.of(context).textTheme.titleMedium,
      ),
      body: buildContainer(
        context,
        "",
        SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildContainer(
                    context,
                    "",
                    Text('image'),
                  ),

                    Row(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [

                          Column(
                              children: [
                                buildContainer(
                                  context,
                                  "",
                                  Text('title'),
                                ),
                                buildContainer(
                                  context,
                                  "",
                                  Text('rating'),
                                ),
                              ]),

                      buildContainer(
                        context,
                        "",
                        Text('price'),
                      ),
                    ]),

                  buildContainer(
                    context,
                    "",
                    Text('cati'),
                  ),
                  buildContainer(
                    context,
                    "",
                    Text('desp'),
                  ),
                ],
              ),
              Positioned(
                bottom: 10,
                right: 10,
                child: FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.add_shopping_cart_sharp),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
