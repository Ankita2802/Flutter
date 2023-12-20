import 'package:figma/fluxstore_api_with_riverpod/provider/product_provider.dart';
import 'package:figma/fluxstore_api_with_riverpod/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductDetailsScreen extends ConsumerStatefulWidget {
  final String id;
  const ProductDetailsScreen({super.key, required this.id});

  @override
  ConsumerState<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends ConsumerState<ProductDetailsScreen> {

  

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 1,
        titleSpacing: 0,
        title: Text(
          "Product Details",
          style: titleBlackBold,
        ),
        actions: const [
          Icon(Icons.notifications),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.shopping_cart),
        ],
      ),
      body: SingleChildScrollView(
        child: const Column(
          children: [
            
          ],
        ),
      ),
    );
  }
}
