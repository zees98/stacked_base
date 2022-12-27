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
            child: TextButton(
                child: Text("Go to home"),
                onPressed: () => viewModel.navigateToHome()),
          ),
        );
      },
      viewModelBuilder: () => LoginScreenViewModel(),
    );
  }
}
