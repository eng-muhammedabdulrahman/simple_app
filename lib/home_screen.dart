import 'package:flutter/material.dart';
import 'package:simple_app/color_screen.dart';
import 'package:simple_app/components.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
            child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient:
                        LinearGradient(begin: Alignment.bottomRight, colors: [
                      Colors.black.withOpacity(.9),
                      Colors.black.withOpacity(.5),
                    ])),
                child: const Text(
                  'Color Screen',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ))),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: GridView.count(
          physics: const BouncingScrollPhysics(),
          crossAxisCount: 3,
          children: colorsList
              .map((colorItem) => InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ColorScreen(colorItem)));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(
                          top: 5, bottom: 10, right: 10, left: 10),
                      decoration: BoxDecoration(
                          color: colorItem,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(5, 5),
                                color: Colors.grey,
                                blurRadius: 4)
                          ]),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
