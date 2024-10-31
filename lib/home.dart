import 'package:flutter/material.dart';
import 'package:week2/screens/setState.dart';
import 'package:week2/widgets/card_demo.dart';
import 'package:week2/widgets/column_page.dart';
import 'package:week2/widgets/counter_page.dart';
import 'package:week2/widgets/list_view_menu.dart';
import 'package:week2/widgets/my_card.dart';
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
                // child: Icon(Icons.android),
                backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/1/18/Mark_Zuckerberg_F8_2019_Keynote_%2832830578717%29_%28cropped%29.jpg'),
              ),
            ),
            ListTile(
              leading: Icon((Icons.home)),
              title: Text('Home'),
              onTap: () async {
               await Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
               debugPrint("Home page");
              },
            ),
            ListTile(
              leading: Icon((Icons.apps)),
              title: Text('Row'),
              onTap: () async {
                await Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RowPage(),
                  ),
                );
                debugPrint("Row widget");
              },
            ),
            ListTile(
              leading: Icon((Icons.apps)),
              title: Text('Column'),
              onTap: () async {
                await Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ColumnPage(),
                  ),
                );
                debugPrint("Column widget");
              },
            ),
            ListTile(
              leading: Icon((Icons.apps)),
              title: Text('List view menu'),
              onTap: () async {
               final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ListViewMenu(),
                  ),
                );
                debugPrint("List view widget $result");
              },
            ),
            ListTile(
              leading: const Icon((Icons.credit_score)),
              title: const Text('Card & Inkwell widget'),
              onTap: () async {
                 await Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CardDemo(),
                  ),
                );
                 debugPrint("'Card & Inkwell widget");
              },
            ),
            ListTile(
              leading: const Icon((Icons.credit_card)),
              title: const Text('My Card'),
              onTap: ()async {
                await Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyCard(),
                  ),
                );
                debugPrint("My Card");
              },
            ),
            ListTile(
              leading: const Icon((Icons.library_add)),
              title: const Text('SetState'),
              onTap: () async {
               await Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SetStateDemo(),
                  ),
                );
               debugPrint("SetState");
              },
            ),
            ListTile(
              leading: const Icon((Icons.countertops)),
              title:  Text('Counter App'),
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CounterPage(name: "xxx",),
                  ),
                );
                debugPrint("Counter App");
              },
            ),
            Divider(
              height: 20,
              thickness: 1,
              indent: 20,
              endIndent: 0,
              color: Colors.indigo,
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
