import 'package:figma/fluxstore_api_with_riverpod/provider/category_provider.dart';
import 'package:figma/fluxstore_api_with_riverpod/screens/category/electronic_tab.dart';
import 'package:figma/fluxstore_api_with_riverpod/screens/category/jewelery_tab.dart';
import 'package:figma/fluxstore_api_with_riverpod/screens/category/men_clothing_tab.dart';
import 'package:figma/fluxstore_api_with_riverpod/screens/category/women_clothing_tab.dart';
import 'package:figma/fluxstore_api_with_riverpod/theme/app_theme.dart';
import 'package:figma/fluxstore_api_with_riverpod/theme/theme_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoryList extends ConsumerStatefulWidget {
  const CategoryList({super.key});

  @override
  ConsumerState<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends ConsumerState<CategoryList>
    with SingleTickerProviderStateMixin {
  int pageIndex = 0;
  final controller1 = ScrollController();
  final controller2 = ScrollController();
  final controller3 = ScrollController();
  final controller4 = ScrollController();

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    controller3.dispose();
    controller4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final categoryNotifier = ref.watch(categoryProvider);
    final categories = categoryNotifier.cate;

    return categories.isEmpty
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.maxFinite,
                color: Colors.transparent,
                child: TabBar(
                  isScrollable: true,
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                  unselectedLabelColor: AppColors.appBlack,
                  labelColor: AppColors.appPink,
                  indicatorColor: Colors.transparent,
                  labelStyle: boldWhite.copyWith(fontSize: 20),
                  unselectedLabelStyle: boldWhite.copyWith(fontSize: 20),
                  tabs: List.generate(
                    categories.length,
                    (index) => soldItemTabs(index, categories[index]),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: List.generate(
                    categories.length,
                    (index) {
                      return RefreshIndicator(
                        color: AppColors.purple,
                        backgroundColor: AppColors.appBlack,
                        displacement: 20,
                        onRefresh: () async {},
                        child: _buildTabBarView(index, categories[index]),
                      );
                    },
                  ),
                ),
              ),
            ],
          );
  }

  Tab soldItemTabs(int index, String name) {
    return Tab(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Text(
          name,
        ),
      ),
    );
  }

  Widget _buildTabBarView(int index, String name) {
    switch (index) {
      case 0:
        return ElectronicTabs(
          controller: controller1,
          categori: name,
        );
      case 1:
        return JeweleryTabs(
          controller: controller2,
          categori: name,
        );
      case 2:
        return MenClothTabs(
          controller: controller3,
          categori: name,
        );
      case 3:
        return WomenClothTabs(
          controller: controller4,
          categori: name,
        );

      default:
        return Container();
    }
  }
}
