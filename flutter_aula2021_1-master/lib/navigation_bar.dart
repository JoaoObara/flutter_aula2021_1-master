import 'package:flutter/material.dart';
import 'package:ola_mundo/home_page.dart';

class HomePageBarState extends State<HomePage> {
  int pagina = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'Página ${pagina + 1}',
        style: const TextStyle(fontSize: 30),
      )),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            backgroundColor: Colors.lightBlue.withOpacity(0.1),
            labelTextStyle: MaterialStateProperty.all(
                const TextStyle(fontSize: 14, fontWeight: FontWeight.bold))),
        child: NavigationBar(
            selectedIndex: pagina,
            onDestinationSelected: (int i) => setState(() => pagina = i),
            destinations: const [
              NavigationDestination(
                  icon: Icon(Icons.email_outlined),
                  selectedIcon: Icon(Icons.email),
                  label: 'E-mail'),
              NavigationDestination(
                  icon: Icon(Icons.videocam_outlined, size: 30),
                  selectedIcon: Icon(Icons.videocam),
                  label: 'Reunião'),
            ]),
      ),
    );
  }
}
