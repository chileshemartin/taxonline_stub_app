import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  static const routeName = '/dash_board';

  @override
  Widget build(BuildContext context) {
    Widget _createHeader() {
      return UserAccountsDrawerHeader(
        accountName: Text('Mposa Mabwe'),
        accountEmail: Text('2773457617'),
        currentAccountPicture: CircleAvatar(
          backgroundColor: Colors.white,
        ),
      );
    }

    Widget _createDrawerItem(
        {IconData icon, String text, GestureTapCallback onTap}) {
      return ListTile(
        title: Row(
          children: <Widget>[
            Icon(icon),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(text),
            ),
          ],
        ),
        onTap: onTap,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Center(
        child: Text('Welcome'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            _createHeader(),

            //Add your services here. Use list tile to add a group name,
            // and  _createDrawerItem to add children
            ListTile(
              title: Text('Education'),
            ),
            _createDrawerItem(icon: Icons.filter, text: 'Videos', onTap: () {}),
            _createDrawerItem(
              icon: Icons.recent_actors,
              text: 'Articles',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
