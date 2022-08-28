import 'package:change_notifier/notifier/fruit_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FruitButtons extends StatelessWidget {
  final String fruit;
  const FruitButtons({super.key, required this.fruit});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => {
        Provider.of<FruitNotifier>(context, listen: false).changeFruit(fruit),
      },
      child: Text(fruit),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              Provider.of<FruitNotifier>(context).fruit == fruit
                  ? Theme.of(context).primaryColor
                  : Theme.of(context).primaryColorLight)),
    );
  }
}
