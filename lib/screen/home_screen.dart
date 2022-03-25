import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.extension),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Text.rich(
              TextSpan(
                  text: 'Welcome,   ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: 'Panha',
                      style: TextStyle(fontWeight: FontWeight.normal),
                    ),
                  ]),
              style: TextStyle(fontSize: 50),
            ),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Search'),
            ),
            SizedBox(height: 45),
            Text(
              'Save Places',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 350,
              // child: GridView.count(
              //   padding: EdgeInsets.zero,
              //   childAspectRatio: 1.491,
              //   crossAxisCount: 2,
              //   children: [
              //     for (var country in countries)
              //       Image.asset('assets/images/$country.jpg')
              //   ],
              // ),
              child: GridView.count(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                childAspectRatio: 1.5,
                crossAxisCount: 2,
                children: [
                  Card(
                    color: Colors.teal,
                  ),
                  Card(
                    color: Colors.cyan,
                  ),
                  Card(
                    color: Colors.yellowAccent,
                  ),
                  Card(
                    color: Colors.deepOrange,
                  ),
                  Card(
                    color: Colors.red,
                  ),
                  Card(
                    color: Colors.yellow,
                  ),
                  Card(
                    color: Colors.purpleAccent,
                  ),
                  Card(
                    color: Colors.indigo,
                  ),
                  Card(
                    color: Colors.black,
                  ),
                  Card(
                    color: Colors.pinkAccent,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

final countries = ['Cambodia', 'Thailand', 'Vietnam', 'Lando'];
