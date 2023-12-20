import 'package:cached_network_image/cached_network_image.dart';
import 'package:figma/fluxstore_api_with_riverpod/provider/category_provider.dart';
import 'package:figma/fluxstore_api_with_riverpod/theme/theme_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WomenClothTabs extends ConsumerStatefulWidget {
  final ScrollController controller;
  final String? categori;
  const WomenClothTabs({super.key, required this.controller, this.categori});

  @override
  ConsumerState<WomenClothTabs> createState() => _ElectronicTabsState();
}

class _ElectronicTabsState extends ConsumerState<WomenClothTabs> {
  @override
  Widget build(BuildContext context) {
    final categoryNotifier = ref.watch(categoryProvider);
    // ignore: unused_local_variable
    final categories = categoryNotifier.getproductitems(
      widget.categori ?? "Default Text",
    );
    // ignore: non_constant_identifier_names
    final elctroic_cate = categoryNotifier.ProductList;

    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      shrinkWrap: true,
      children: List.generate(
        elctroic_cate.length,
        (index) {
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.23,
              width: MediaQuery.of(context).size.height * 0.23,
              decoration: const BoxDecoration(
                color: AppColors.dullGrey,
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(elctroic_cate[index].image),
                      ),
                    ),
                  ),
                  // CachedNetworkImage(
                  //   imageUrl: elctroic_cate[index].image,
                  //   fit: BoxFit.contain, // Replace with the actual URL
                  //   imageBuilder: (context, imageProvider) => CircleAvatar(
                  //     radius: 70,
                  //     backgroundColor: Colors.red,
                  //     backgroundImage: imageProvider,
                  //   ),
                  //   placeholder: (context, url) =>
                  //       const CircularProgressIndicator(), // Placeholder widget while loading
                  //   errorWidget: (context, url, error) => const Icon(
                  //       Icons.error), // Widget to display in case of an error
                  // ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            "Price :\$ ${elctroic_cate[index].price.toString()}"),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
