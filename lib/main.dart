import 'package:flutter/material.dart';

void main() {
  runApp(Basketball_app());
}

// ignore: must_be_immutable
class Basketball_app extends StatefulWidget {
  Basketball_app({super.key});
  @override
  State<Basketball_app> createState() => _Basketball_appState();
}

class _Basketball_appState extends State
<Basketball_app> {
  int TeamA = 0;

  int TeamB = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Points Counter'),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      'Team A',
                      style: TextStyle(
                        fontSize: 38,
                      ),
                    ),
                    Text(
                      '$TeamA',
                      style: const TextStyle(
                        fontSize: 170,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        TeamA++;
                        setState(() {});
                      },
                      child: const Text(
                        'Add 1 point',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange, minimumSize: const Size(150, 50)),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        TeamA += 2;
                        setState(() {});
                      },
                      child: const Text(
                        'Add 2 Point',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: const Size(150, 50),
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        TeamA += 3;
                        setState(() {});
                      },
                      child: const Text(
                        'Add 3 Point',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: const Size(150, 50),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 500,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 20,
                    endIndent: 60,
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      'Team B',
                      style: TextStyle(
                        fontSize: 38,
                      ),
                    ),
                    Text(
                      '$TeamB',
                      style: const TextStyle(
                        fontSize: 170,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        TeamB++;
                        setState(() {});
                      },
                      child: const Text(
                        'Add 1 point',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange, minimumSize: const Size(150, 50)),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        TeamB += 2;
                        setState(() {});
                      },
                      child: const Text(
                        'Add 2 Point',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: const Size(150, 50),
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        TeamB += 3;
                        setState(() {});
                      },
                      child: const Text(
                        'Add 3 Point',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: const Size(150, 50),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 42,
              child: ElevatedButton(
                onPressed: () {
                  TeamA = 0;
                  TeamB = 0;
                  setState(() {
                    
                  });
                },
                child: const Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  minimumSize: const Size(150, 50),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
