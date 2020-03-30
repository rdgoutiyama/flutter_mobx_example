import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_mobx_example/counter.dart';
import 'package:flutter_mobx_example/second_screen.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Counter>(create: (_) => Counter()),

      ],
      child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
       routes: {
        '/second': (context) => SecondScreen()
      },
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Counter>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              disabledColor: Colors.grey,
              disabledTextColor: Colors.black,
              padding: EdgeInsets.all(8.0),
              splashColor: Colors.blueAccent,
              onPressed: () {
                  Navigator.pushNamed(context, '/second');
              },
              child: Text(
                "Mostrar valor",
                style: TextStyle(fontSize: 20.0),
              ),
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
