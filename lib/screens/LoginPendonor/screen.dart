import 'package:flutter/material.dart';
import 'package:pendonor_sukarela/services/AuthService.dart';
import 'package:pendonor_sukarela/widget/LoadingProgress.dart';
import 'package:pendonor_sukarela/widget/ToastMessage.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _noHp = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool _loading = false;

  void submitLogin(noHp, password) async {
    var _res = await AuthService().login(noHp, password, "pendonor");

    if (_res['success']) {
      // Navigator.pushNamed(context, '/dashboardPendonor');
      print(_res);
      setState(() {
        _loading = false;
      });
    } else {
      ToastMessage(context, _res['message'], Colors.red);
      setState(() {
        _loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 80.0),
              child: Center(
                child: Image.asset(
                  'lib/assets/images/pendonor.png',
                  height: 250,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: Text(
                "Login Pendonor",
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
                "Lihat siapa saja yang membutuhkan darah Anda untuk didonorkan kepada mereka yang membutuhkan",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: Form(
                key: _formKey,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _noHp,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: "Nomor HP",
                            labelText: "Nomor HP",
                            prefix: Text("+62 "),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                          style: TextStyle(height: 1.0),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20.0)),
                        TextFormField(
                          controller: _password,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Masukkan Password",
                            labelText: "Password",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                          style: TextStyle(height: 1.0),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 40.0,
                                width: 170.0,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Future.delayed(const Duration(seconds: 2))
                                        .then((value) => {
                                              submitLogin(
                                                  _noHp.text, _password.text),
                                            });

                                    setState(() {
                                      _loading = true;
                                    });
                                  },
                                  child: _loading
                                      ? LoadingProgess(
                                          title: "Loading...",
                                          height: 20.0,
                                          width: 20.0,
                                          color: Colors.white,
                                        )
                                      : Text("Masuk"),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                      Color(0xFFFF2323),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
