import 'package:flutter/material.dart';
import 'login.dart';
import 'page2.dart'; // pastikan file page2.dart ada dan benar

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: LoginPage(),
));

class Home extends StatelessWidget {
  final String username;
  final String sekolah;

  const Home({super.key, required this.username, required this.sekolah});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.shortestSide,
              padding: const EdgeInsets.all(20.0),
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: const Color.fromRGBO(240, 255, 255, 0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      const CircleAvatar(
                        radius: 100.0,
                        backgroundImage: AssetImage("assets/images/hana.jpg"),
                      ),
                      Text(
                        username,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 18, color: Colors.black),
                      ),
                      Text(
                        sekolah,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 16, color: Color(0xF9916B0D)),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Page2()),
                          );
                        },
                        child: const Text('See More'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
