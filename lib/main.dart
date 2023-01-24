import 'package:flutter/material.dart';
import 'package:hw8/page/add.dart';

void main() {
  runApp(const HomePage());
}

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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 199, 55, 11),
        child: Text(
          '+',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
        ),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: ((context) {
            return Profile();
          })));
        },
      ),
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 199, 55, 11),
          title: Text(
            'Today',
            style: TextStyle(fontSize: 22, color: Colors.white),
          )),
      backgroundColor: Color.fromARGB(255, 238, 238, 238),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Jun8 Today Wendsday',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              SizedBox(
                height: 4,
              ),
              Container(
                color: Color.fromARGB(255, 77, 76, 76),
                height: 1,
                width: 50,
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 14,
                    backgroundColor: Color.fromARGB(255, 209, 204, 255),
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 10,
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Shop for grocerye',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Divider(),
              Row(
                children: [
                  CircleAvatar(
                    radius: 14,
                    backgroundColor: Color.fromARGB(255, 209, 204, 255),
                    child: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 12, 155, 173),
                      radius: 10,
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'new task is $Task',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Divider(),
              Row(
                children: [
                  CircleAvatar(
                    radius: 14,
                    backgroundColor: Color.fromARGB(255, 209, 204, 255),
                    child: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 255, 65, 7),
                      radius: 10,
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'creat project tag !! project',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Divider(),
              Row(
                children: [
                  CircleAvatar(
                    radius: 14,
                    backgroundColor: Color.fromARGB(255, 209, 204, 255),
                    child: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 238, 188, 172),
                      radius: 10,
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    '$Task',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PageTow extends StatefulWidget {
  const PageTow({super.key});

  @override
  State<PageTow> createState() => _pageTowState();
}

class _pageTowState extends State<PageTow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 230, 188, 188),
      ),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 238, 238, 238),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          children: [
                            Text(
                              'Todoist Pros',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'unti jul 8 2022',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Icon(Icons.arrow_right_sharp)
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 238, 238, 238),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.account_box,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Account',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                width: 250,
                                height: 1,
                                color: Color.fromARGB(255, 146, 146, 146),
                              ),
                            ],
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Icon(Icons.arrow_right_sharp)
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.account_balance,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Todoist Pros',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                width: 250,
                                height: 1,
                                color: Color.fromARGB(255, 146, 146, 146),
                              )
                            ],
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Icon(Icons.arrow_right_sharp)
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.color_lens,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'theam',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                width: 250,
                                height: 1,
                                color: Color.fromARGB(255, 146, 146, 146),
                              )
                            ],
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Icon(Icons.arrow_right_sharp)
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.app_blocking_outlined,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'App icons',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                width: 250,
                                height: 1,
                                color: Color.fromARGB(255, 146, 146, 146),
                              )
                            ],
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Icon(Icons.arrow_right_sharp)
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Productivity',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                width: 250,
                                height: 1,
                                color: Color.fromARGB(255, 146, 146, 146),
                              )
                            ],
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Icon(Icons.arrow_right_sharp)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 22,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 238, 238, 238),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.alarm,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Reminders',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                width: 250,
                                height: 1,
                                color: Color.fromARGB(255, 146, 146, 146),
                              ),
                            ],
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Icon(Icons.arrow_right_sharp)
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.notification_add,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Notifications',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                width: 250,
                                height: 1,
                                color: Color.fromARGB(255, 146, 146, 146),
                              )
                            ],
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Icon(Icons.arrow_right_sharp)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 22,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 238, 238, 238),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.alarm,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'siri',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                            ],
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Icon(Icons.arrow_right_sharp)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 22,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 238, 238, 238),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.help,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Helpe and feed back',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                            ],
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Icon(Icons.arrow_right_sharp)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
