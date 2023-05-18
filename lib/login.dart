import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ziggy/bloc/signinbloc.dart';
import 'package:ziggy/botnav.dart';
import 'package:ziggy/register.dart';
import 'package:ziggy/z_home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController usernamecontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 218, 199, 198),
      appBar: AppBar(
        // leading: const CircleAvatar(
        //   backgroundColor: Colors.blueGrey,
        //   backgroundImage: AssetImage('assets/images/hawk.jpeg'),
        // ),
        title: const Text("Ziggy", style: TextStyle(fontSize: 30)),
        backgroundColor: const Color.fromARGB(255, 218, 199, 198),
        titleTextStyle: const TextStyle(fontFamily: 'RobotoMono'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 250),
            Center(
              child: Column(
                children: [
                  // const Text(
                  //   "CYber",
                  //   style: TextStyle(
                  //     fontSize: 40,
                  //     fontWeight: FontWeight.bold,
                  //     color: Color.fromARGB(255, 73, 73, 73),
                  //   ),
                  // ),

                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 192, 104, 41),
                            width: 2.0),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextFormField(
                        controller: usernamecontroller,
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsetsDirectional.symmetric(
                                vertical: 10, horizontal: 14),
                            hintText: 'Username'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 192, 104, 41),
                            width: 2.0),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextFormField(
                        controller: passwordcontroller,
                        obscureText: _obscureText,
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsetsDirectional.symmetric(
                                vertical: 10, horizontal: 14),
                            hintText: 'Password'),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2.1,
                      ),
                      MaterialButton(
                          child: const Text(
                            "Forgot Your Password?",
                            style: TextStyle(
                                color: Color.fromARGB(255, 73, 73, 73),
                                fontSize: 15),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ZiggyHome()));
                          }),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 16,
                    width: MediaQuery.of(context).size.width / 2,
                    child: MaterialButton(
                      onPressed: () {
                        BlocProvider.of<LoginBloc>(context).add(VerifyPassword(
                            name: usernamecontroller.text.toString(),
                            password: passwordcontroller.text.toString()));
                      },

                      color: const Color.fromARGB(255, 218, 199, 198),

                      // onPressed: () {
                      //   if (usernamecontroller.text.isEmpty) {
                      //     Fluttertoast.showToast(msg: "User Empty");
                      //   } else if (passwordcontroller.text.isEmpty) {
                      //     Fluttertoast.showToast(msg: "Password Empty");
                      //   }
                      //    else if (usernamecontroller.text.contains("Nikki") &&
                      //         passwordcontroller.text.contains("Nikki123")) {
                      //       Fluttertoast.showToast(msg: "Login Successful");
                      //       Navigator.push(
                      //           context,
                      //           MaterialPageRoute(
                      //               builder: (context) => const EditHome()));
                      //     } else {
                      //       Fluttertoast.showToast(msg: "Invalid Login");
                      //     }

                      // }
                      child: BlocConsumer<LoginBloc, LoginStates>(
                          builder: (context, state) {
                        if (state is Loading) {
                          return const CircularProgressIndicator();
                        }
                        return const Text(
                          "Sign in",
                          style: TextStyle(
                            color: Color.fromARGB(255, 73, 73, 73),
                          ),
                        );
                      }, listener: (context, state) {
                        if (state is LoginSuccess) {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const BottomNavigationBarExampleApp()));
                        } else if (state is LoginError) {
                          Fluttertoast.showToast(msg: "Invalid Username ");
                        }
                      }),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 16,
                    width: MediaQuery.of(context).size.width / 2,
                    child: MaterialButton(
                      color: const Color.fromARGB(255, 218, 199, 198),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Register()));
                      },
                      child: const Text("Register"),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
