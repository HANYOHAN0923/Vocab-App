import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vocab_app/models/vocab_model.dart';

class VocabWidget extends StatelessWidget {
  final List<Vocab> vocab_list;
  bool isHidden = false;

  VocabWidget(this.vocab_list, {super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: vocab_list.map((vocab) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            height: 100,
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    Text(
                      vocab.vocab,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    Text(vocab.pOs),
                    isHidden ? const Text("") : Text(vocab.meaning),
                  ],
                ),
                Text(vocab.example),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}

class AddVocab extends StatefulWidget {
  final Function addVocab;

  const AddVocab(this.addVocab, {super.key});

  @override
  State<AddVocab> createState() => _AddVocabState();
}

class _AddVocabState extends State<AddVocab> {
  final _vocabController = TextEditingController();
  final _meaningController = TextEditingController();
  final _exampleController = TextEditingController();
  final String _today = DateFormat.yMd().format(DateTime.now());

  void _submitData() {
    final enteredVocab = _vocabController.text;
    final enteredMeaning = _meaningController.text;
    final enteredExample = _exampleController.text;

    widget.addVocab(
      enteredVocab,
      "Noun",
      enteredMeaning,
      enteredExample,
    );

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(
                labelText: 'VOCAB',
              ),
              controller: _vocabController,
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'MEANING',
              ),
              controller: _meaningController,
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'EXAMPLE',
              ),
              controller: _exampleController,
            ),
            SizedBox(
              height: 70,
              child: Row(
                children: <Widget>[
                  Text(_today),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Choose Date',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
              ),
              onPressed: _submitData,
              child: Text(
                'Add',
                style: TextStyle(
                  color: Theme.of(context).textTheme.labelMedium!.color,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
