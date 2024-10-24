import 'package:flutter/material.dart';
import 'package:week2/widgets/column_page.dart';
import 'package:week2/widgets/list_view_menu.dart';
import 'package:week2/widgets/row_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Home"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Mark Zuckerberg"),
              accountEmail: Text('mark@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.android),
              ),
            ),
            ListTile(
              leading: Icon((Icons.home)),
              title: Text('Home'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon((Icons.apps)),
              title: Text('Row'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RowPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon((Icons.apps)),
              title: Text('Column'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ColumnPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon((Icons.apps)),
              title: Text('List view menu'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ListViewMenu(),
                  ),
                );
              },
            ),

          ],
        ),
      ),
      body: const Center(
        child: Text('MyApp'),
      ),
    );
  }
}
