import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../constants_color/bg_color.dart';

class AccScreen extends StatefulWidget {
  const AccScreen({super.key});

  @override
  State<AccScreen> createState() => _AccScreenState();
}

class Months {
  final String month;

  Months({required this.month});
}

List<Months> _monthlist = [
  Months(month: "មករា"),
  Months(month: "កុម្ភៈ"),
  Months(month: "មិនា"),
  Months(month: "មេសា"),
  Months(month: "ឩសភា"),
  Months(month: "មិថុនា"),
  Months(month: "កក្កដា"),
  Months(month: "សីហា"),
  Months(month: "កញ្ញា"),
  Months(month: "តុលា"),
  Months(month: "វិច្ឆិកា"),
  Months(month: "ធ្នូ"),
];

class _AccScreenState extends State<AccScreen> {
  List<String> _selected = [];
  String dropdownValue = 'មករា';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFe05d0d),
        title: Padding(
          padding: const EdgeInsets.only(right: 65),
          child: Center(
              child: Text(
            "គណនេយ្យ",
            style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: "Battambang"),
          )),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              color: orangeColor,
              height: 250,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "ចំនួន",
                    style: TextStyle(
                        fontFamily: "Battambang",
                        color: Colors.white,
                        fontSize: 30),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("0៛",
                      style: TextStyle(
                          fontFamily: "Battambang",
                          color: Colors.white,
                          fontSize: 25)),
                  Divider(
                    color: Colors.white,
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "ចំនួន",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                        Text("0",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "ចំនួនផ្ញើរ",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                        Text("0",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
