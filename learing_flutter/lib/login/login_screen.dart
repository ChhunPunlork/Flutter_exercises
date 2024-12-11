import 'package:flutter/material.dart';

class SchoolRegisterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School Register',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SchoolRegisterScreen(),
    );
  }
}

class SchoolRegisterScreen extends StatefulWidget {
  @override
  _SchoolRegisterScreenState createState() => _SchoolRegisterScreenState();
}

class _SchoolRegisterScreenState extends State<SchoolRegisterScreen> {
  List<String> students = ['Alice', 'Bob', 'Charlie'];
  List<String> courses = ['Mathematics', 'English', 'Science'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('School Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Students:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(students[index]),
                      trailing: IconButton(
                        icon: Icon(Icons.arrow_forward),
                        onPressed: () {
                          navigateToStudentDetail(students[index]);
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Courses:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                itemCount: courses.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(courses[index]),
                      trailing: IconButton(
                        icon: Icon(Icons.arrow_forward),
                        onPressed: () {
                          navigateToCourseDetail(courses[index]);
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void navigateToStudentDetail(String studentName) {
    // Navigate to student detail screen
    // Example: Navigator.push(context, MaterialPageRoute(builder: (context) => StudentDetailScreen(studentName)));
    print('Navigate to student detail: $studentName');
  }

  void navigateToCourseDetail(String courseName) {
    // Navigate to course detail screen
    // Example: Navigator.push(context, MaterialPageRoute(builder: (context) => CourseDetailScreen(courseName)));
    print('Navigate to course detail: $courseName');
  }
}
