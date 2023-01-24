# hw8

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var body;
    if (currentIndex == 0) {
      body = PageOne();
    } else {
      body = PageTow();
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Setting')
          ],
          onTap: ((value) {
            setState(() {
              currentIndex = value;
            });
          }),
        ),
        body: body,
      ),
    );
  }
}

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Container(
        color: Colors.blue,
        child: Column(),
      ),
    );
  }
}

class PageTow extends StatelessWidget {
  const PageTow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Container(
        color: Color.fromARGB(255, 7, 226, 255),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}