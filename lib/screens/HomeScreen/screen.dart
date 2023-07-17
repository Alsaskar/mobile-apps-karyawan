import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'lib/assets/images/blood-donor.png',
                height: 250,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: Text(
                "Pendonor Sukarela",
                style: TextStyle(
                  color: Color(0xFFFF2323),
                  fontFamily: 'Anton Regular',
                  fontSize: 35.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5.0),
              child: Text(
                "Mempertemukan Pendonor Sukarela dengan mereka yang membutuhkan darah",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      print('test');
                    },
                    child: Container(
                      width: 150.0,
                      height: 180.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xFFFF2323),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 5,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            "lib/assets/images/give-blood.png",
                            height: 130.0,
                          ),
                          Text(
                            "Masuk Sebagai Pencari",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/loginPendonor');
                    },
                    child: Container(
                      width: 150.0,
                      height: 180.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xFFFF2323),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 5,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            "lib/assets/images/pendonor.png",
                            height: 130.0,
                          ),
                          Text(
                            "Masuk Sebagai Pendonor",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: ElevatedButton.icon(
                icon: Icon(
                  Icons.map,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/telusuri');
                },
                label: Text(
                  "Telusuri Pendonor",
                  style: TextStyle(color: Colors.black),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
