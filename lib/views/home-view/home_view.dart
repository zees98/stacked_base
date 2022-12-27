import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_base/views/home-view/home_view_model.dart';

class HomeView extends StatelessWidget {
  final String? name;
  const HomeView({super.key, this.name});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, HomeViewModel model, Widget? child) {
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Hello $name",
                  textAlign: TextAlign.center,
                ),
                // horizontal divider
                Divider(
                  height: 20,
                  thickness: 1,
                  color: Colors.black,
                  indent: 20,
                  endIndent: 20,
                ),
                Text("You have a cart of total \$${model.cartCount}"),
                TextButton(
                  child: const Text("Clear Cart"),
                  onPressed: () => model.clearCart(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
