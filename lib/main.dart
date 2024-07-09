import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NinjaCard()
    );
  }
}
class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;
  void increaseLevel(){
    setState(() {
      ninjaLevel++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            "Ninja ID",
            style: TextStyle(
              color: Colors.white
            ) ,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: increaseLevel,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar.jpg'),
                radius: 40,
              ),
            ),
            Divider(
              height: 90,
              color: Colors.black,
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Chun-Li',
              style: TextStyle(
                color: Colors.amberAccent[200],
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                color: Colors.amberAccent[200],
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(
                  Icons.email
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Chun_li@gmail.com',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

