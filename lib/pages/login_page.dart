import 'package:doremon_world/pages/routes.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";
  bool changebutton = false;

  final _formkey = GlobalKey<FormState>();

  nextTohome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeroute);
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Expanded(
        child: Material(
          color: Colors.white,
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Center(
                  child: Text(
                    "W e l c o m e ",
                    style: TextStyle(
                      // backgroundColor: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ),
                Container(
                  child: Image.asset(
                    "asset/images/doremon.jpg",
                    // height: 900,
                    // width: 400,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 25,
                  child: Center(
                    child: Text(
                      "$name",
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                        letterSpacing: 3.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      TextFormField(
                        cursorColor: Colors.amber[700],
                        decoration: const InputDecoration(
                          // fillColor: Colors.red,
                          // iconColor: Colors.black,
                          hintText: "Enter username",
                          labelText: "UserName",
                        ),
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "username cannot be empty";
                          } else
                            return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(
                            () {},
                          );
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: "Enter password",
                          labelText: "Password",
                        ),
                        validator: (value) {
                          if (value!.isEmpty)
                            return "password cannot be empty";
                          else if (value.length < 6)
                            return "password must be atleast 6";
                          else
                            return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Material(
                        color: Colors.red,
                        borderRadius:
                            BorderRadius.circular(changebutton ? 80 : 8),
                        child: InkWell(
                          // splashColor: Colors.black,
                          onTap: (() => nextTohome(context)),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            height: 50,
                            width: changebutton ? 50 : 150,
                            alignment: Alignment.center,
                            child: changebutton
                                ? const Icon(
                                    Icons.done,
                                    color: Colors.green,
                                    size: 30,
                                  )
                                : const Text(
                                    "login",
                                    style: TextStyle(fontSize: 20),
                                  ),
                            // decoration: BoxDecoration(
                            //   color: Colors.red,
                            //   borderRadius:
                            //       BorderRadius.circular(changebutton ? 80 : 8),
                            // ),
                          ),
                        ),
                      ),
                      // ElevatedButton(
                      //   child: Text("login"),
                      //   style: TextButton.styleFrom(
                      //     backgroundColor: Colors.green,
                      //     minimumSize: Size(150, 40),
                      //   ),
                      //   onPressed: () {
                      //     Navigator.pushNamed(context, MyRoutes.homeroute);
                      //   },
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
