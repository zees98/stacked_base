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
      builder: (context, model, Widget? child) {
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Text("Hello $name"),
          ),
        );
      },
    );
  }
}
