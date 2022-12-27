import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'login_screen_view_model.dart';

class LoginScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginScreenViewModel>.reactive(
      builder:
          (BuildContext context, LoginScreenViewModel viewModel, Widget? _) {
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  child: Text("Add Item"),
                  onPressed: () => viewModel.addItem(),
                ),
                TextButton(
                  child: Text("Remove Item"),
                  onPressed: () => viewModel.removeItem(),
                ),
                Divider(
                  height: 20,
                  thickness: 1,
                  color: Colors.black,
                  indent: 20,
                  endIndent: 20,
                ),
                TextButton(
                  child: Text("Go To Home"),
                  onPressed: () => viewModel.navigateToHome(),
                ),
                Text("Cart value: \$${viewModel.cartCount}")
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () => LoginScreenViewModel(),
    );
  }
}
