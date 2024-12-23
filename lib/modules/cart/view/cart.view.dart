import 'package:add_to_cart_animation/add_to_cart_animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/helpers/cacheNetworkImage.helper.dart';
import 'package:untitled/modules/cart/controller/cart.controller.dart';

class CartView extends StatelessWidget {
  CartView({super.key});

  final CartController cartController = CartController();

  @override
  Widget build(BuildContext context) {
    return AddToCartAnimation(
      cartKey: cartController.cartKey,
      createAddToCartAnimation: (runAddToCartAnimation) {
        cartController.setAddToCartAnimationFunction(runAddToCartAnimation);
      },
      height: 30,
      width: 30,
      dragAnimation: const DragToCartAnimationOptions(
        rotation: true,
      ),
      jumpAnimation: const JumpAnimationOptions(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Cart",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.red,
          actions: [
            Obx(
            ()=> AddToCartIcon(
                key: cartController.cartKey,
                icon: const Icon(
                  Icons.shopping_cart_rounded,
                  size: 24,
                  color: Colors.white,
                ),
                badgeOptions: BadgeOptions(
                  active: cartController.badgeQuantity.value > 0,
                ),
              ),
            ),
          ],
        ),
        body: ListView(
          children: List.generate(
            cartController.productList.length,
            (index) => AppListItem(cartController: cartController, index: index),
          ),
        ),
      ),
    );
  }
}

class AppListItem extends StatelessWidget {
  AppListItem({
    super.key,
    required this.cartController,
    required this.index,
  });

  final GlobalKey widgetKey = GlobalKey();
  final int index;
  final CartController cartController;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () => cartController.onAddToCart(widgetKey),
        leading: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: SizedBox(
            height: 80,
            width: 80,
            child: CacheNetworkImageHelper.getImage(
              cartController.productList[index]["thumbnailUrl"],
              boxFit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(
          cartController.productList[index]["title"],
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
