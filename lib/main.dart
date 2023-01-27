import 'package:flutter/material.dart';
import 'package:hw_11/components/my_text.dart';
import 'package:hw_11/constants.dart';
import 'package:hw_11/pages/cart.dart';
import 'package:hw_11/pages/home.dart';

main() {
  runApp(const App11());
}

class App11 extends StatelessWidget {
  const App11({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavPage(),
    );
  }
}

AppBar createAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    title: const MyText('Jothor', fontSize: 30),
    actions: homeActions,
  );
}

class NavPage extends StatefulWidget {
  const NavPage({super.key});

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  var currentIndex = 0;

  static const pages = [
    HomePage(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (newIndex) {
          currentIndex = newIndex;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}
