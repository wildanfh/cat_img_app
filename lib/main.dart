import 'package:flutter/material.dart';
import 'package:myget_it/presentation/notifier/cat_notifier.dart';
import 'package:myget_it/presentation/pages/home_page.dart';
import 'package:provider/provider.dart';
import 'locator.dart' as loc;

void main() {
  loc.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => loc.locator<CatNotifier>(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Cat Image',
        theme: ThemeData(primarySwatch: Colors.grey),
        home: const HomePage(),
      ),
    );
  }
}
