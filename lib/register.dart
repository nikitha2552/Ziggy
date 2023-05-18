import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ziggy/bloc/signinbloc.dart';
import 'package:ziggy/botnav.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(value: "Kottayam", child: Text("Kottayam")),
    const DropdownMenuItem(value: "Eranakulam", child: Text("Eranakulam")),
    const DropdownMenuItem(value: "Kasargod", child: Text("Kasargod")),
    const DropdownMenuItem(value: "Kozhikode", child: Text("Kozhikode")),
    const DropdownMenuItem(value: "Kannur", child: Text("Kannur")),
    const DropdownMenuItem(value: "Wayanad", child: Text("Wayanad")),
  ];
  String selectedValue = "Kasargod";
  final bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(height: 100),
                Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Container(
                          height: 500,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromARGB(255, 192, 104, 41),
                                width: 1.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                const SizedBox(height: 10),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    labelText: 'Name',
                                    hintText: 'Enter Your Name',
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter your name';
                                    }
                                    return null;
                                  },
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    labelText: 'Email',
                                    hintText: 'Enter Your Email',
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter your email';
                                    }
                                    return null;
                                  },
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    labelText: 'Phone',
                                    hintText: 'Enter your Phone Number',
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter phone number';
                                    }
                                    return null;
                                  },
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    labelText: 'Password',
                                    hintText: 'Enter your Password',
                                  ),
                                  obscureText: _obscureText,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter Password';
                                    }
                                    return null;
                                  },
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    labelText: 'Re-Password',
                                    hintText: 'Re-Enter your Password',
                                  ),
                                  obscureText: _obscureText,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please re-enter Password';
                                    }
                                    return null;
                                  },
                                ),
                                Row(
                                  children: [
                                    const Text("Select Location      ",
                                        style: TextStyle(fontSize: 17)),
                                    DropdownButton(
                                        value: selectedValue,
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            selectedValue = newValue!;
                                          });
                                        },
                                        items: menuItems),
                                  ],
                                ),
                                MaterialButton(
                                  onPressed: () {
                                    BlocProvider.of<LoginBloc>(context).add(
                                        VerifyPassword(name: selectedValue));
                                  },
                                  color:
                                      const Color.fromARGB(255, 218, 199, 198),
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
                                    if (_formKey.currentState!.validate()) {
                                      if (state is LoginSuccess) {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const BottomNavigationBarExampleApp()));
                                      } else if (state is LoginError) {
                                        Fluttertoast.showToast(
                                            msg: "Invalid Username ");
                                      }
                                    }
                                  }),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
}
