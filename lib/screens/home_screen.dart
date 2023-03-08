import 'package:flutter/material.dart';
import 'package:vocab_app/widgets/app_bar_widget.dart';
import 'package:vocab_app/widgets/vocab_widget.dart';

import '../models/vocab_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Vocab> list_vocab = [];

  final List<String> pOs = [
    "n",
    "pro",
    "v",
    "adj",
    "adv",
    "conj",
    "int",
    "prep",
  ];

  void addVocab(String vocab, String pOs, String meaning, String example) {
    final newVocab =
        Vocab(vocab: vocab, pOs: pOs, meaning: meaning, example: example);

    setState(() {
      list_vocab.add(newVocab);
    });
  }

  void showAddVocab(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return AddVocab(addVocab);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar("Today's Vocab"),
      body: list_vocab.isEmpty
          ? const Center(
              child: Text('Plz Add Todays Vocab'),
            )
          : SingleChildScrollView(
              child: VocabWidget(list_vocab),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showAddVocab(context),
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
