import 'package:flutter/material.dart';

var Task = 'Study';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff3F3F3F),
      appBar: AppBar(
        backgroundColor: const Color(0xffCC7373),
        title: const Text('Add Task'),
      ),
      body: Container(
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 6),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 200,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Center(
                  child: Text('Add new Task',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffCC7373),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(22),
                  child: TextField(
                    onChanged: (String ff) {
                      setState(() {
                        Task = ff;
                      });
                    },
                    decoration: const InputDecoration(
                      labelStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 3, color: Color.fromARGB(255, 236, 140, 80)),
                      ),
                      labelText: "Your task ",
                      fillColor: Colors.white,
                      hintText: 'Add task',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
