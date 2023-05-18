import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ziggy/bloc/regbloc.dart';
import 'package:ziggy/bloc/signinbloc.dart';
import 'package:ziggy/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginBloc>(create: (BuildContext context) => LoginBloc()),
        BlocProvider<RegBloc>(create: (BuildContext context) => RegBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Swiggy Clone',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: const Splash(),
      ),
    );
  }
}
