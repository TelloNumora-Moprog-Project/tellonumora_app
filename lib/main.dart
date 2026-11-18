import 'package:flutter/material.dart';

// Screens
import 'package:tellonumora_app/screens/home_screen.dart';
import 'package:tellonumora_app/screens/menu_screen.dart';
import 'package:tellonumora_app/screens/protection_screen.dart';
import 'package:tellonumora_app/screens/chat_screen.dart';
import 'package:tellonumora_app/screens/settings_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TelloNumora',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.redAccent),
        fontFamily: 'Lato',
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.red,
          brightness: Brightness.dark,
        ),
      ),
      themeMode: ThemeMode.system, 
      debugShowCheckedModeBanner: false,
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
  int _selectedIndex = 0;

  static const List<Widget> _screens = <Widget>[
    HomeScreen(),
    ChatScreen(),
    ProtectionScreen(),
    MenuScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: 32,
              ),
              const SizedBox(width: 8),
              const Text(
                'TelloNumora',
                style: TextStyle(
                  fontFamily: 'Amaranth',
                  fontWeight: FontWeight.w700,
                  fontSize: 26,
                ),
              )
            ]
          ),
          
        ),
        body: _screens[_selectedIndex],
        bottomNavigationBar: AppBottomNavigationBar(
          selectedIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}

class AppBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTap;

  const AppBottomNavigationBar({super.key, required this.selectedIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: selectedIndex,
      onTap: onTap,
      backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
      selectedItemColor: Colors.redAccent,
      unselectedItemColor: Colors.deepOrange.shade100,
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
        BottomNavigationBarItem(icon: Icon(Icons.shield), label: 'Protection'),
        BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
      ],
    );
  }
}
