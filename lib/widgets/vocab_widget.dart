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
                  'apple',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
                Text('/æp.əl/'),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("n. 사과라는 뜻입니다."),
              Container(
                width: 220,
                height: 2,
                color: Colors.blueAccent.withOpacity(0.7),
              ),
              Text("Ex) I Like Apple."),
              Text("U) give sth to sb"),
            ],
          ),
        ],
      ),
    );
  }
}
