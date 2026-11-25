import 'package:flutter/material.dart';

// Screens
import 'package:tellonumora_app/screens/home_screen.dart';
import 'package:tellonumora_app/screens/menu_screen.dart';
import 'package:tellonumora_app/screens/protection_screen.dart';
import 'package:tellonumora_app/screens/chat_screen.dart';
import 'package:tellonumora_app/screens/settings_screen.dart';
import 'package:tellonumora_app/screens/subscription_screen.dart';

// Packages
import 'package:tellonumora_app/app_accents.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // <-- Tambahkan di sini
      title: 'TelloNumora',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: mainColor),
        fontFamily: 'Lato',
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  static const List<Widget> _screens = <Widget>[
    HomeScreen(),
    ChatScreen(),
    ProtectionScreen(),
    SubscriptionScreen(),
    MenuScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png', height: 32),
            const SizedBox(width: 8),
            const Text(
              'TelloNumora',
              style: TextStyle(
                fontFamily: 'Amaranth',
                fontWeight: FontWeight.w700,
                fontSize: 26,
              ),
            ),
          ],
        ),
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: AppBottomNavigationBar(
        currentIndex: _currentIndex,
        onDestinationSelected: (index) {
          setState(() => _currentIndex = index);
        },
      ),
    );
  }
}

class AppBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onDestinationSelected;

  const AppBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onDestinationSelected,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: onDestinationSelected,
      selectedIndex: currentIndex,
      indicatorColor: selectedColor,
      destinations: const <Widget>[
        NavigationDestination(
          selectedIcon: Icon(Icons.home),
          icon: Icon(Icons.call),
          label: 'Home',
        ),
        NavigationDestination(icon: Icon(Icons.chat), label: 'Chat'),
        NavigationDestination(icon: Icon(Icons.shield), label: 'Protection'),
        NavigationDestination(icon: Icon(Icons.wallet_membership), label: 'Subscription'),
        NavigationDestination(icon: Icon(Icons.menu), label: 'Menu'),
      ],
    );
  }
}
