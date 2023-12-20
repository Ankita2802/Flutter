import 'package:carousel_slider/carousel_slider.dart';
import 'package:figma/fluxstore_api_with_riverpod/components/category_list.dart';
import 'package:figma/fluxstore_api_with_riverpod/theme/app_assets.dart';
import 'package:figma/fluxstore_api_with_riverpod/theme/app_theme.dart';
import 'package:figma/fluxstore_api_with_riverpod/theme/theme_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen>
    with SingleTickerProviderStateMixin {
  TextEditingController searchCOntroller = TextEditingController();
  List<String> list = [
    AppImages.jewellery,
    AppImages.cloth,
    AppImages.electronic,
  ];
  final CarouselController _carouselController = CarouselController();
  ValueNotifier<int> carouselNotifier = ValueNotifier(0);
  ValueNotifier<bool> notifier = ValueNotifier(false);
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 1,
          titleSpacing: 0,
          title: Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              const Icon(Icons.person),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Hello Ankita",
                style: titleBlackBold,
              ),
            ],
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: TextField(
                    controller: searchCOntroller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      hintText: "Search here...",
                      hintStyle: const TextStyle(color: AppColors.appGrey),
                      suffixIcon: IconButton(
                        onPressed: () {
                          searchCOntroller.clear();
                        },
                        icon: const Icon(Icons.clear),
                      ),
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
              ),
              StatefulBuilder(
                builder: (context, setStat) {
                  return CarouselSlider.builder(
                    itemCount: list.length,
                    carouselController: _carouselController,
                    itemBuilder: (context, index, realIndex) {
                      return Column(
                        children: [
                          const SizedBox(height: 18),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              list[index],
                              width: 200,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      );
                    },
                    options: CarouselOptions(
                      aspectRatio: 3.0,
                      autoPlay: true,
                      viewportFraction: 0.7,
                      onPageChanged: (index, reason) {
                        carouselNotifier.value = index;
                      },
                      autoPlayInterval: const Duration(seconds: 3),
                    ),
                  );
                },
              ),
              ValueListenableBuilder(
                valueListenable: carouselNotifier,
                builder: (context, value, child) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: list.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () =>
                            _carouselController.animateToPage(entry.key),
                        child: Container(
                          width: 6,
                          height: 6,
                          margin: const EdgeInsets.symmetric(
                            vertical: 8.0,
                            horizontal: 4.0,
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: value == entry.key
                                ? AppColors.purple
                                : Colors.grey,
                          ),
                        ),
                      );
                    }).toList(),
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
              const CategoryList(),
            ],
          ),
        ),
      ),
    );
  }
}
