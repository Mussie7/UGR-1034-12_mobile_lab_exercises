import 'package:flutter/material.dart';

class Course {
  String code;
  String title;
  String description;

  Course({required this.code, required this.title, this.description = ""});
}

class CoursesListScreen extends StatelessWidget {
  const CoursesListScreen({super.key, required this.courses, required this.onTapped});
  final List<Course> courses;
  final ValueChanged<Course> onTapped;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Courses List")),
      body: ListView(
        children: [for (var course in courses) ListTile(title: Text(course.title), subtitle: Text(course.code), onTap: () => onTapped(course))],
      ),
    );
  }
}

class CourseDetailScreen extends StatelessWidget {
  final Course course;
  const CourseDetailScreen({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(course.title)),
      body: Center(
        child: Column(
          children: [Text(course.title), Text(course.code), Text(course.description)],
        ),
      ),
    );
  }
}

class CourseApp extends StatefulWidget {
  @override
  State<CourseApp> createState() => _CourseAppState();
}

class _CourseAppState extends State<CourseApp> {
  Course? _selectedCourse;
  List<Course> courses = [
    Course(code: "SiTE-001", title: "Introduction to Computer Programming", description: "Computer Organization, Architecture, and Programming"),
    Course(code: "SiTE-002", title: "Introduction to Web Programming", description: "Web Organization, Architecture, and Programming"),
    Course(code: "SiTE-003", title: "Introduction to Mobile Programming", description: "Mobile Organization, Architecture, and Programming")
  ];

  void _tabHandler(Course course) {
    setState(() {
      _selectedCourse = course;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Navigator(
        pages: [
          MaterialPage(
              key: const ValueKey("CourseListScreen"),
              child: CoursesListScreen(
                courses: courses,
                onTapped: _tabHandler,
              )),
          if (_selectedCourse != null) MaterialPage(key: ValueKey(_selectedCourse), child: CourseDetailScreen(course: _selectedCourse!))
        ],

        onPopPage: (route, result) {
          if (!route.didPop(result)) {
            return false;
          }
          setState(() {
            _selectedCourse = null;
          });
          return true;
        },
      ),
    );
  }
}
