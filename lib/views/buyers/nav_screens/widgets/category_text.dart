import 'package:flutter/material.dart';

class CategoryText extends StatefulWidget {
  const CategoryText({super.key});

  @override
  State<CategoryText> createState() => _CategoryTextState();
}

class _CategoryTextState extends State<CategoryText> {
  final List<String> _categorylable = [
    'food',
    'vegetables',
    'egg',
    'tea',
    'book',
    'fast_food'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 9.0),
      child: Column(
        children: [
          Text(
            "Categories",
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _categorylable.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: ActionChip(
                              backgroundColor: Colors.yellow.shade900,
                              label: Text(_categorylable[index])),
                        );
                      }),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
