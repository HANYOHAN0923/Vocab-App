import 'package:flutter/material.dart';
import 'package:vocab_app/models/vocab_model.dart';
import 'package:vocab_app/widgets/app_bar_widget.dart';
import 'package:vocab_app/widgets/vocab_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final vocab_list = [
    Vocab(
      vocab: "apple",
      pronounciation: "/asdfasdfa/",
      part: "noun",
      meaning: "苹果",
      example: "I like apple",
      usage: "give sth to sb",
      category: "fruit",
    ),
    Vocab(
      vocab: "korea",
      pronounciation: "/asdfasdf/",
      part: "noun",
      meaning: "韩国",
      example: "I am korean",
      usage: "slka;j asdfa",
      category: "nationality",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar("Today's VocabWidget"),
      body: ListView.builder(
        itemCount: vocab_list.length,
        itemBuilder: (context, index) {
          return VocabWidget(vocab: vocab_list[index]);
        },
      ),
    );
  }
}
