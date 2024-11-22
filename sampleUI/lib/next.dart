import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Next extends StatelessWidget {
  const Next({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff271f41),
      body: Column(
        children: [
          Gap(150),
          Expanded(
            child: Container(
              height: 500,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60))),
              child: Column(
                children: [
                  Gap(20),
                  Text(
                    'Top UP',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                  ),
                  Gap(20),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [Text('Enter amount')],
                    ),
                  ),
                  Gap(30),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Text(
                          '50',
                          style: TextStyle(fontSize: 40, color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                  Gap(10),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Divider(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        contin(),
                        Gap(15),
                        contin(),
                        Gap(15),
                        contin(),
                        Gap(15),
                        contin(),
                      ],
                    ),
                  ),
                  Gap(30),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Text(
                          'payment method',
                          style: TextStyle(color: Colors.black87),
                        )
                      ],
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.gif_box_outlined,
                      color: Colors.red,
                    ),
                    title: Text('Debit Card'),
                    trailing: Icon(Icons.arrow_downward_rounded),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: ListTile(
                      leading: Icon(
                        Icons.money,
                        color: Colors.red,
                      ),
                      title: Text(
                        'Visa',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 30,
                            fontWeight: FontWeight.w900),
                      ),
                      trailing: Text(
                        'Change',
                        style: TextStyle(color: Colors.orange),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.money_off_csred,
                      color: Colors.red,
                    ),
                    title: Text('Bank Transfer'),
                    trailing: Icon(Icons.arrow_downward_rounded),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.house,
                      color: Colors.red,
                    ),
                    title: Text('Agent'),
                    trailing: Icon(Icons.arrow_downward_rounded),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.more_vert,
                      color: Colors.red,
                    ),
                    title: Text('Others'),
                    trailing: Icon(Icons.arrow_downward_rounded),
                  ),
                  Gap(20),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(double.infinity, 50)),
                        onPressed: () {},
                        child: Text(
                          'Proceed',
                          style: TextStyle(color: Colors.white),
                        )),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget contin() {
  return Container(
    width: 30,
    height: 30,
    color: Colors.black54,
    child: Center(child: Text('10')),
  );
}
