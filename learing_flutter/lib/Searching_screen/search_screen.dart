import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Map<String, dynamic>> _listName = [
    {"id": 1, "name": "Lork", "position": "Manager"},
    {"id": 2, "name": "Dyna", "position": "Acount"},
    {"id": 3, "name": "Reaksa", "position": "Teller"},
    {"id": 4, "name": "Nary", "position": "Audit"},
    {"id": 5, "name": "Kanha", "position": "Acount"},
  ];

  List<Map<String, dynamic>> _foundName = [];

  @override
   initState() {
    _foundName = _listName;
    super.initState();
  }

  void _runFilter(String enterKeyboard) {
    List<Map<String, dynamic>>? results = [];
    if (enterKeyboard.isEmpty) {
      results = _listName;
    } else {
      results = _listName
          .where((user) =>
              user['name'].toLowerCase().contains(enterKeyboard.toLowerCase()))
          .toList();
    }
    setState(() {
      _foundName = results!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
          child: Text(
            "Searching The Name",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.red),
              ),
              child: TextField(
                onChanged: (value) => _runFilter(value),
                decoration: InputDecoration(
                  labelText: "Search", suffixIcon: Icon(Icons.search, color: Colors.red,)
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: _foundName.length,
                  itemBuilder: (context, index) => Card(
                        key: ValueKey(_foundName[index]["id"]),
                        elevation: 4,
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        color: Colors.red,
                        child: ListTile(
                            leading: Text(
                              _foundName[index]["id"].toString(),
                              style: TextStyle(color: Colors.white, fontSize: 24),
                            ),
                            title: Text(
                              _foundName[index]["name"],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              _foundName[index]["position"],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,),
                            )),
                      )),
            )
          ],
        ),
      ),
    );
  }
}
