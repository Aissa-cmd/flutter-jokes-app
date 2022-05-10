import 'package:bad_jokes_app/answer.dart';
import 'package:bad_jokes_app/buttons.dart';
import 'package:bad_jokes_app/question.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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
  int jokesIndex = 0;

  var jokes = [
    {
      "question": "What does a baby computer call its father?",
      "answer": "Data"
    },
    {
      "question": "What's a pencil with two erasers called?",
      "answer": "Pointless"
    },
    {
      "question": "Why is the calendar always scared?",
      "answer": "Because it's days are numbered"
    },
    {"question": "What do you call a fish with no eye", "answer": "Fsh"},
  ];

  void changeJokeIndex(String direction) {
    if (direction == "next") {
      if (jokesIndex == jokes.length - 1) {
        setState(() {
          jokesIndex = 0;
        });
      } else {
        setState(() {
          jokesIndex++;
        });
      }
    } else {
      if (jokesIndex == 0) {
        setState(() {
          jokesIndex = jokes.length - 1;
        });
      } else {
        setState(() {
          jokesIndex--;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Jokes App",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          leading: Icon(Icons.chat),
          leadingWidth: 40,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Question(text: jokes[jokesIndex]["question"] as String),
              Answer(text: jokes[jokesIndex]["answer"] as String),
              Buttons(changeJokeIndex: changeJokeIndex),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
      ),
    );
  }
}
