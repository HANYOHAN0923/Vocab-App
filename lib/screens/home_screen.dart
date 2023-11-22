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
        vocab: vocab,
        part: part,
        meaning: meaning,
        example: example,
        usage: usage,
        category: category),
    Vocab(
        vocab: vocab,
        part: part,
        meaning: meaning,
        example: example,
        usage: usage,
        category: category),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar("Today's VocabWidget"),
      body: Column(children: [
        VocabWidget(vocab: vocab_list[0]),
        VocabWidget(vocab: vocab_list[1]),
      ]),
    );
  }
}
