// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("hola"),
      ),
      body: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Icon(
                Icons.favorite,
                color: Colors.pink,
                size: 24.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
              Icon(
                Icons.audiotrack,
                color: Colors.green,
                size: 30.0,
              ),
              Icon(
                Icons.beach_access,
                color: Colors.blue,
                size: 36.0,
              ),
            ],
          ),
          SizedBox(
            height: 40.0,
          ),
          ElevatedButton(
            onPressed: null,
            child: Text('Press Me'),
          ),
          SizedBox(
            height: 40.0,
          ),
          Image(
            image: NetworkImage(
                'https://img.remediosdigitales.com/8ec220/ducati-panigale-v4-sp-2021-1/1366_2000.jpg'),
          ),
          SizedBox(
            height: 40.0,
          ),
          Checkbox(
            value: true,
            onChanged: null,
          ),
          SizedBox(
            height: 40.0,
          ),
          Radio(
            value: 1,
            groupValue: 1,
            onChanged: null,
          ),
          SizedBox(
            height: 40.0,
          ),
          Switch(
            value: true,
            onChanged: null,
          ),
          SizedBox(
            height: 40.0,
          ),
          Slider(
            value: 0.5,
            onChanged: null,
          ),
          SizedBox(
            height: 40.0,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Enter text'),
          ),
          SizedBox(
            height: 40.0,
          ),
          Card(
            child: ListTile(
              title: Text('Card Title'),
              subtitle: Text('Card Subtitle'),
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          ExpansionTile(
            title: Text('Expandable Tile'),
            children: <Widget>[
              ListTile(
                title: Text('Item 1'),
              ),
              ListTile(
                title: Text('Item 2'),
              ),
            ],
          ),
          SizedBox(
            height: 40.0,
          ),
          CupertinoButton(
            onPressed: null,
            child: Text('Cupertino Button'),
          ),
          SizedBox(
            height: 40.0,
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Stepper(
              steps: [
                const Step(
                  title: Text('house'),
                  content: Text('Cocinar'),
                ),
                const Step(
                  title: Text('eschool'),
                  content: Text('Comerr'),
                ),
              ],
              currentStep: 0,
              onStepContinue: () {},
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Alert Dialog'),
                    content: Text('This is an alert dialog.'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('OK'),
                      ),
                    ],
                  );
                },
              );
            },
            child: Text('Show Alert Dialog'),
          ),
          SizedBox(
            height: 40.0,
          ),
          CupertinoButton(
            onPressed: () async {
              DateTime? selectedDate = await showCupertinoModalPopup(
                context: context,
                builder: (BuildContext context) {
                  return CupertinoDatePicker(
                    onDateTimeChanged: (DateTime newDate) {},
                    mode: CupertinoDatePickerMode.date,
                  );
                },
              );
            },
            child: Text('Pick a date'),
          ),
          SizedBox(
            height: 40.0,
          ),
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry>[
                PopupMenuItem(
                  value: 'option1',
                  child: Text('Option 1'),
                ),
                PopupMenuItem(
                  value: 'option2',
                  child: Text('Option 2'),
                ),
              ];
            },
            onSelected: (value) {
              // Manejar la selección
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
