import 'package:flutter/material.dart';

import '../model/basicProductData.dart';

class DetailScreen extends StatefulWidget {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Screen'),
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
        child: AnimatedContainer(
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
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 3 / 2,
            ),
            children: basicProductData
                .map((productData) => AnimatedContainer(
                      alignment: Alignment.center,
                      duration: const Duration(seconds: 5),
                      curve: Curves.elasticOut,
                      margin: const EdgeInsets.all(10),
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
                              backgroundColor: Colors.black12,
                              title: Text(
                                productData.productTitle,
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyLarge,
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
                                    fit: BoxFit.contain,
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
      ),
    );
  }
}
