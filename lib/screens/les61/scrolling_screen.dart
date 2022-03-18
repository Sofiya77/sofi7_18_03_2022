import 'package:flutter/material.dart';

class ScrollText extends StatefulWidget {
  const ScrollText({Key? key}) : super(key: key);

  @override
  State<ScrollText> createState() => _ScrollTextState();
}
int start= 0;
class _ScrollTextState extends State<ScrollText> {
  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];
    for (int i = 0; i < 100; i += 1) {
      widgets.add(Container(
        height: 30,
        padding: const EdgeInsets.only(left: 17),
        child: Text(
          'Line under number $i',
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('List of lines'),
      ),
      body: Stack(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: widgets,
                ),
              ),
            ),
            Container(
              height: 70,
              color: Colors.yellow[300],
            )
          ],
        ),
        Positioned(
          bottom: 40,
          right: 30,
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                start += 1;
              });
            },
            child: Text(
              '+ $start',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ),
        )
      ]),
    );
  }
}