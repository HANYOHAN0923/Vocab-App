import 'package:flutter/material.dart';

class Vocab {
  String vocab;
  String pOs;
  String meaning;
  String example;

  Vocab({
    required this.vocab,
    required this.pOs,
    required this.meaning,
    required this.example,
  });
}

class Tag {
  String tagName;
  Color color;

  Tag({
    required this.tagName,
    required this.color,
  });
}
