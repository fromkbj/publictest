import 'package:faker_dart/faker_dart.dart';
import 'package:flutter/material.dart';

void entry(String env) => runApp(MyApp(env: env));

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.env});

  final String env;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: env == 'production' ? false : true,
      title: 'AnD Todo app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'AnD Todo app!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double strokeWidth = 5.0;
  Color selectedColor = Colors.black;
  final faker = Faker.instance;

  @override
  Widget build(BuildContext context) {
    faker.setLocale(FakerLocaleType.ko);
    return Scaffold(
      appBar: AppBar(
        title: Text(faker.lorem.paragraph()),
      ),
      body: const Center(),
    );
  }
}
