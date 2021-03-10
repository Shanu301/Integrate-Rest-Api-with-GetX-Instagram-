import 'package:flutter/material.dart';
import 'package:flutter_app/Controllers/productcontroller.dart';
import 'package:flutter_app/Controllers/welcomecontroller.dart';
import 'package:flutter_app/View/product_tile.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';


class FeedPage extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());
  final WelcomeController welcomeController = Get.put(WelcomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.camera_alt_outlined),
            onPressed: () {
              //todo
            },
          ),
          title: const Text('Instagram'),
          centerTitle: true,
          actions: <Widget>[
      IconButton(
      icon: const Icon(Icons.send),
      onPressed: () {

      },
    ),
      ]
      ),
      body: Column(
        children: [

          Expanded(
            child: Obx(() {
              if (productController.isLoading.value)
                return Center(child: CircularProgressIndicator());
              else
                return StaggeredGridView.countBuilder(
                  crossAxisCount: 2,
                  itemCount: productController.productList.length,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  itemBuilder: (context, index) {
                    return ProductTile(productController.productList[index],welcomeController.welcomeList[index]);
                  },
                  staggeredTileBuilder: (index) => StaggeredTile.fit(2),
                );
            }),
          )
        ],
      ),
    );
  }
}
