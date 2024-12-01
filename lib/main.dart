import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testing_provider_statemanagement/counter/provider/counter_provider.dart';
import 'package:testing_provider_statemanagement/provider/user_provider.dart';
import 'package:testing_provider_statemanagement/screens/main_screen.dart';

import 'counter/screen/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // this allow you to use UserProvider Entire application
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CounterProvider(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CounterScreen(),
      ),
    );
  }
}
