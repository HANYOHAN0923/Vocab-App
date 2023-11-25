import 'package:flutter/material.dart';
import 'package:vocab_app/models/vocab_model.dart';

class VocabWidget extends StatefulWidget {
  final Vocab vocab;

  VocabWidget({required this.vocab, super.key});

  @override
  State<VocabWidget> createState() => _VocabWidgetState();
}

class _VocabWidgetState extends State<VocabWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            width: 150,
            child: Column(
              children: [
                Text(
                  widget.vocab.vocab,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
                Text(widget.vocab.pronounciation),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.vocab.part + widget.vocab.meaning),
              Container(
                width: 220,
                height: 2,
                color: Colors.blueAccent.withOpacity(0.7),
              ),
              Row(
                children: [],
              ),
              Row(),
              Text(widget.vocab.example),
              Text(widget.vocab.usage),
            ],
          ),
        ],
      ),
    );
  }
}
