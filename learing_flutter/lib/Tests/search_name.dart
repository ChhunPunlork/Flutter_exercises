import 'package:flutter/material.dart';

class SearchName extends StatefulWidget {
  const SearchName({super.key});

  @override
  State<SearchName> createState() => _SearchNameState();
}

class _SearchNameState extends State<SearchName> {

  List<Map<String, dynamic>> _allInfo = [
    {"id": 1, "name": "PunLork", "age": 21},
    {"id": 2, "name": "Punleu", "age": 21},
    {"id": 3, "name": "Theanith", "age": 24},
    {"id": 4, "name": "Mony", "age": 19},
    {"id": 5, "name": "Bunlong", "age": 20},
    {"id": 6, "name": "Thona", "age": 29},
    {"id": 7, "name": "Kimsreang", "age": 30},
    {"id": 8, "name": "Puthea", "age": 30},
    {"id": 9, "name": "Bunna", "age": 24},
    {"id": 10, "name": "Dyna", "age": 30},
  ];
  List<Map<String, dynamic>> _foundInfo = [];

  @override
  initState() {
    _foundInfo = _allInfo;
    super.initState();
  }

  void _runFilters(String enterkeyboad) {
    List<Map<String, dynamic>>? results = [];
    if (enterkeyboad.isEmpty) {
      results = _allInfo;
    } else {
      results = _allInfo
          .where((user) =>
          user['name'].toLowerCase().contains(enterkeyboad.toLowerCase()))
          .toList();
    }
    setState(() {
      _foundInfo = results!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text(
            "Searching Persons",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => _runFilters(value),
              decoration: InputDecoration(
                  labelText: "Seach", suffixIcon: Icon(Icons.search)),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: _foundInfo.length,
                  itemBuilder: (context, index) => Card(
                    key: ValueKey(_foundInfo[index]["id"]),
                    color: Colors.blue,
                    elevation: 4,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                      leading: Text(
                        _foundInfo[index]["id"].toString(),
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                      title: Text(_foundInfo[index]["name"],
                          style:
                          TextStyle(fontSize: 24, color: Colors.white)),
                      subtitle: Text(
                        "${_foundInfo[index]["age"].toString()} years old",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
