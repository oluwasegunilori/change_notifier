import 'package:change_notifier/notifier/fruit_notifier.dart';
import 'package:change_notifier/ui/fruit_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FruitButtons(fruit: "Apple"),
            FruitButtons(fruit: "Grape"),
            FruitButtons(fruit: "Mango"),
            Text("Selected ${Provider.of<FruitNotifier>(context).fruit}")
          ],
        ),
      ),
    );
  }
}
