import 'package:flutter/material.dart';

class AddVocabulary extends StatefulWidget {
  const AddVocabulary({super.key});

  @override
  State<AddVocabulary> createState() => _AddVocabularyState();
}

class _AddVocabularyState extends State<AddVocabulary> {
  final _textController = TextEditingController();
  final _meaningController = TextEditingController();

  final List<String> dropdownList = [
    'noun',
    'verb',
    'adjective',
    'adverb',
    'phrase'
  ];
  String selectedDropdown = 'noun';

  final List<String> categoryList = [
    'favorite',
    'TOEIC',
  ];
  String selectedCategory = 'favorite';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.only(
            top: 10,
            left: 10,
            right: 10,
            bottom: MediaQuery.of(context).viewInsets.bottom + 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Vocabulary',
                ),
                controller: _textController,
                onSubmitted: (_) {},
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Meaning',
                ),
                controller: _meaningController,
                onSubmitted: (_) {},
              ),
              SizedBox(
                height: 150,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    DropdownButton(
                      value: selectedDropdown,
                      items: dropdownList.map((String item) {
                        return DropdownMenuItem<String>(
                          child: Text('$item'),
                          value: item,
                        );
                      }).toList(),
                      onChanged: (dynamic value) {
                        setState(() {
                          selectedDropdown = value;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    DropdownButton(
                      value: selectedCategory,
                      items: categoryList.map((String item) {
                        return DropdownMenuItem<String>(
                          child: Text('$item'),
                          value: item,
                        );
                      }).toList(),
                      onChanged: (dynamic value) {
                        setState(() {
                          selectedCategory = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Add Vocab'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AddCategory extends StatefulWidget {
  const AddCategory({super.key});

  @override
  State<AddCategory> createState() => _AddCategoryState();
}

class _AddCategoryState extends State<AddCategory> {
  final TextEditingController _titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.only(
            top: 10,
            left: 10,
            right: 10,
            bottom: MediaQuery.of(context).viewInsets.bottom + 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Category Title',
                ),
                controller: _titleController,
                onSubmitted: (_) {},
              ),
              SizedBox(
                  height: 120,
                  child: Row(
                    children: [
                      Text('No Image Selected, '),
                      GestureDetector(
                        child: Text(
                          'Click Here adding your image...',
                          style: TextStyle(
                            color: Colors.blueAccent,
                          ),
                        ),
                        onTap: () {
                          // image_picker 적용하기
                          // image 선택되면 화면 바뀌기
                        },
                      ),
                    ],
                  )),
              ElevatedButton(
                onPressed: () {},
                child: Text('Add Category'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
