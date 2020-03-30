import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_mobx_example/counter.dart';
import 'package:provider/provider.dart';

class SecondScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Valor atual'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'VALOR ATUAL:',
            ),
            Observer(
              builder: (_) {
              return Text(
              "${controller.value}",
              style: Theme.of(context).textTheme.headline4,
            );
            },)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increament,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
