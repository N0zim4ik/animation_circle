import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool a = false;
  bool b = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              setState(() {
                a = !a;
              });
            },
            onLongPress: () {
              setState(() {
                a = !a;
              });
            },
            autofocus: false,
            isSemanticButton: true,
            focusNode: FocusNode(debugLabel: 'Hello'),
            onHover: (b) {
              setState(() {});
            },
            statesController: MaterialStatesController(),
            clipBehavior: Clip.antiAlias,
            style: ButtonStyle(
                surfaceTintColor: MaterialStatePropertyAll(Colors.red)),
            child: SizedBox(
              width: 200,
              height: 50,
              child: DecoratedBox(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black87)),
                child: Center(
                  child: Text(
                    a ? 'this is true' : 'this is false',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          FilledButton(
            onPressed: () {
              setState(() {
                a = !a;
              });
            },
            child: Text(
              a ? 'this is true' : 'this is false',
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                a = !a;
              });
            },
            child: Text(
              a ? 'this is true' : 'this is false',
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          OutlinedButton(
            onPressed: () {
              setState(() {
                a = !a;
              });
            },
            child: Text(
              a ? 'this is true' : 'this is false',
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                a = !a;
              });
            },
            icon: Icon(Icons.android_outlined),
          ),
          BackButton(
            onPressed: () {
              setState(() {
                a = !a;
              });
            },
            color: Colors.black87,
          ),
          CloseButton(
            onPressed: () {
              setState(() {
                a = !a;
              });
            },
          ),
          DrawerButton(),
          SubmenuButton(
            menuChildren: [
              Text('hello'),
              Text('hello'),
              Text('hello'),
            ],
            child: Icon(Icons.icecream),
          ),
          // SegmentedButton(
          //     segments: [ButtonSegment(value: 1)],
          //     selected: {'hello', 'bay'}),
          MaterialButton(onPressed: () {}),
        ],
      ),
    );
  }
}
