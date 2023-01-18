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
      body: AnimatedContainer(
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
        child: GridView(
          padding: const EdgeInsets.all(20),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 2.5 / 3,
          ),
          children: basicProductData
              .map((productData) => AnimatedContainer(
                    alignment: Alignment.center,
                    duration: const Duration(seconds: 5),
                    curve: Curves.elasticOut,
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                          color: Theme.of(context).colorScheme.secondary,
                          width: 1),
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: GridTile(
                          header: Text(productData.productId.toString()),
                          footer: GridTileBar(

                            backgroundColor: Colors.black87,
                            title: Text(
                              productData.productTitle,
                              maxLines: 1,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white),
                            ),
                          ),
                          child: GestureDetector(
                            onTap: () {
                              // Navigator.of(context).pushNamed(
                              //   DetailScreen.routeName,
                              //   arguments: ProductModel.productId,
                              // );
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Hero(
                                tag: productData.productId,
                                child: Image.network(
                                  productData.productImageURL,
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
