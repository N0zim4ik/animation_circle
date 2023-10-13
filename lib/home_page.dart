import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DefaultTabController(
        length: 3,
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 200,
                child: ColoredBox(
                  color: Colors.blue,
                  child: Center(
                    child: Text('Teb bar'),
                  ),
                ),
              ),
              TabBar(
                indicatorColor: Colors.orange,
                labelColor: Colors.orange,
                tabs: [
                  Tab(text: 'All'),
                  Tab(text: 'Users'),
                  Tab(text: 'Groups'),
                ],
              ),
              Expanded(
                  child: TabBarView(
                children: [
                  ColoredBox(color: Colors.black),
                  ColoredBox(color: Colors.red),
                  ColoredBox(color: Colors.green),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
