import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Container1(),
          const SizedBox(
            height: 50,
          ),
Container2()
        ],
      ),
    );
  }
}

class Container1 extends StatelessWidget {
  const Container1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: MediaQuery.of(context).size.width,
      duration: Duration(milliseconds: 300),
      color: Colors.pink,
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            height: 36,
            width: MediaQuery.of(context).size.width * 0.4,
            color: Colors.grey,
          ),
          SizedBox(
            height: 16,
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            width: MediaQuery.of(context).size.width * 0.9,
            height: 36,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}


class Container2 extends StatelessWidget {
  const Container2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        AnimatedContainer(
          width: MediaQuery.of(context).size.width,
          duration: Duration(milliseconds: 300),
          color: Colors.pink,
          margin: EdgeInsets.all(16),
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(
                height: 52,
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 300),
                width: MediaQuery.of(context).size.width * 0.9,
                height: 36,
                color: Colors.grey,
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            height: 36,
            width: MediaQuery.of(context).size.width * 0.4,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
