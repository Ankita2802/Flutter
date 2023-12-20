import 'package:cached_network_image/cached_network_image.dart';
import 'package:figma/fluxstore_api_with_riverpod/model/product_model.dart';
import 'package:figma/fluxstore_api_with_riverpod/provider/cart_provider.dart';
import 'package:figma/fluxstore_api_with_riverpod/provider/product_provider.dart';
import 'package:figma/fluxstore_api_with_riverpod/screens/home/cart_screen.dart';
import 'package:figma/fluxstore_api_with_riverpod/screens/home/product_details_screen.dart';
import 'package:figma/fluxstore_api_with_riverpod/theme/theme_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoryScreen extends ConsumerStatefulWidget {
  const CategoryScreen({super.key});

  @override
  ConsumerState<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends ConsumerState<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    final productnotifier = ref.watch(sortproductProvider);
    // ignore: unused_local_variable
    final product = productnotifier.getSortProducts();
    // ignore: non_constant_identifier_names
    final product_list = productnotifier.productList;

    return Scaffold(
      appBar: AppBar(
        title: const Text('All Products'),
        backgroundColor: AppColors.lightvilot,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => productnotifier.onChangeAsc(),
            icon: isAsc
                ? const Icon(
                    Icons.arrow_upward,
                  )
                : const Icon(Icons.arrow_downward),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              onTap: () => () {},
              title: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Logout'),
                      Icon(Icons.logout_outlined),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: product_list.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding: const EdgeInsets.all(12.0),
              child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(
                  height: 20,
                ),
                itemCount: product_list.length,
                itemBuilder: (BuildContext context, int index) {
                  return _buildCard(product_list[index], context);
                },
              ),
            ),
    );
  }

  Widget _buildCard(ProductModel item, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailsScreen(
              id: item.id.toString(),
            ),
          ),
        );
      },
      child: Container(
        height: 200,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: AppColors.lightvilot,
          borderRadius: BorderRadius.circular(
            25,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Positioned(
                top: 15,
                bottom: 15,
                left: 25,
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(item.image),
                    ),
                  ),
                ),
                // child: CircleAvatar(
                //   radius: 70,
                //   backgroundColor: Colors.white,
                //   child: ClipOval(
                //     child: CachedNetworkImage(
                //       width: double.infinity,
                //       height: 130.0,
                //       fit: BoxFit.scaleDown,
                //       imageUrl: item.image,
                //       placeholder: (context, url) => const SizedBox(
                //         width: 10,
                //         height: 10,
                //         child: CircularProgressIndicator(
                //           strokeWidth: 2.0,
                //         ),
                //       ),
                //       errorWidget: (context, url, error) => Image.asset(
                //         'assets/images/sinimagen.png',
                //         height: 30,
                //         fit: BoxFit.cover,
                //       ),
                //     ),
                //   ),
                // ),
              ),
              Positioned(
                top: 20,
                right: 5,
                left: 170,
                child: SizedBox(
                  width: double.minPositive,
                  child: Text(
                    item.title,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ),
              Positioned(
                top: 155,
                right: 5,
                left: 170,
                child: SizedBox(
                  width: double.minPositive,
                  child: Text(
                    '\$ ${item.price.toString()}',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
              ),
              Positioned(
                top: 140,
                right: 5,
                child: GestureDetector(
                  onTap: () {
                    addedProduct;
                  },
                  child: const Icon(
                    Icons.shopping_cart,
                    color: AppColors.liteWhite,
                    size: 30,
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_outline_outlined,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> addedProduct(ProductModel item) async {
    // showDialog(
    //   barrierDismissible: false,
    //   context: context,t
    //   builder: (context) => const Center(child: CircularProgressIndicator()),
    // );
    await ref
        .read(addCartchangeprovider.notifier)
        .addToCart(item.id.toString(),
            {'productId': item.id, 'quantity': item.id}, DateTime.now())
        .then((value) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const CartScreen(),
        ),
      );
    });
  }
}
