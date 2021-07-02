import 'package:flutter/material.dart';
import 'models/item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'icon',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  List<Item> items = [];

  HomePage() {
    items.add(Item(title: "Ameixa", done: false));
    items.add(Item(title: "Mamão", done: true));
    items.add(Item(title: "Cebola", done: false));
    items.add(Item(title: "Abacaxi", done: true));
  }

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teste'),
        actions: <Widget>[
          Icon(Icons.ac_unit),
        ],
      ),
      body: ListView.builder(
        itemCount: widget.items.length,
        itemBuilder: (BuildContext context, int index) {
          final item = widget.items[index];
          return CheckboxListTile(
            title: Text(item.title),
            key: Key(item.title),
            value: item.done!,
            onChanged: (value) {
              setState(() {
                item.done = value!;
              });
            },
          );
        },
      ),
    );
  }
}
