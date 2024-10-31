import 'package:flutter/material.dart';

class ListMenu {
  final String? title;
  final IconData? icon;
  final Color? bkColor;
  const ListMenu({this.title, this.icon, this.bkColor});
}

List<ListMenu> menus = [
  const ListMenu(title: 'MENU-1', icon: Icons.person, bkColor: Colors.green), //index 0
  const ListMenu(title: 'MENU-2', icon: Icons.person_add, bkColor: Colors.blue), //index 0
  const ListMenu(title: 'MENU-3', icon: Icons.power_off, bkColor: Colors.red), //index 0
  const ListMenu(title: 'MENU-4', icon: Icons.wifi, bkColor: Colors.orange), //index 0
];

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("My Card"),
      ),
      body: Container(
        child: GridView.count(
          crossAxisCount: 3,
          children: List.generate(menus.length, (index) {
            return Card(
              color: menus[index].bkColor,
              margin: const EdgeInsets.all(12.0),
              child: InkWell(
                onTap: () {
                  debugPrint("${menus[index].title}");
                },
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(menus[index].icon, size: 40, color: Colors.white),
                      Text("${menus[index].title}", style: TextStyle(fontSize: 15.0, color: Colors.white)),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
