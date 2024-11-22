import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:newwwww/next.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff271f41),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Column(
                children: [
                  Gap(30),
                  Text(
                    'home',
                    style: TextStyle(color: Colors.white),
                  ),
                  Gap(25),
                  Row(
                    children: [
                      Expanded(
                        child: ListTile(
                          title: Text(
                            'HI,Fred',
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          subtitle: Text(
                            'Welcome back to finech',
                            style:
                                TextStyle(fontSize: 15, color: Colors.white60),
                          ),
                          trailing: CircleAvatar(
                            radius: 50,
                            child: Icon(Icons.person),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Gap(25),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (ctx) => Next()));
                },
                child: Container(
                  height: 630,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60))),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              children: [
                                Expanded(
                                    child: ListTile(
                                  title: Text(
                                    'Balance',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white60),
                                  ),
                                  subtitle: Text(
                                    "336.26",
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.white),
                                  ),
                                  trailing: Icon(
                                    Icons.text_decrease_sharp,
                                    color: Colors.white,
                                  ),
                                ))
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              iconsAndText(),
                              iconsAndText(),
                              iconsAndText(),
                              iconsAndText(),
                            ],
                          ),
                          Gap(30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              iconsAndText(),
                              iconsAndText(),
                              iconsAndText(),
                              iconsAndText(),
                            ],
                          ),
                        ],
                      ),
                      Positioned(
                        top: 270,
                        child: Container(
                          height: 500,
                          width: 386,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(80),
                                  topRight: Radius.circular(40))),
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Gap(15),
                                  Text(
                                    'Nearby Me',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Find Finech merchants near your area!',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ],
                              ),
                              Gap(10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  containerFor4(),
                                  containerFor4(),
                                  containerFor4(),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
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

Widget iconsAndText() {
  return Container(
    child: Column(
      children: [
        Icon(
          Icons.money,
          color: Colors.white70,
        ),
        Text(
          'Transfer',
          style: TextStyle(color: Colors.white70),
        )
      ],
    ),
  );
}

Widget containerFor4() {
  return Container(
    height: 130,
    width: 90,
    decoration: BoxDecoration(
        color: Colors.black54, borderRadius: BorderRadius.circular(20)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 80,
          width: 80,
          color: Colors.white,
          child: Image(
              image: AssetImage(
                  'https://www.freepnglogos.com/uploads/logo-myntra-png/myntra-logo-in-circle-transparent-background-21.png')),
        ),
        Text('0.30')
      ],
    ),
  );
}
