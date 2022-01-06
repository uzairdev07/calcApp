import 'package:calculator_app/constants.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(kPrimaryColor),
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'Mr. Uzair',
              style: TextStyle(
                fontSize: 26,
              ),
            ),
            accountEmail: Text(
              'uzairdev.07',
              style: TextStyle(
                fontSize: 14,
                color: Color(kOpTxtColor),
              ),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://avatars.githubusercontent.com/u/62235689?s=400&v=4',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Color(ktxtColor),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
            ),
          ),
          ListTile(
            leading: Icon(Icons.calculate),
            title: Text('Simple'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.functions),
            title: Text('Science'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.ad_units),
            title: Text('Convertor'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.history),
            title: Text('History'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('Policies'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            title: Text('Exit'),
            leading: Icon(Icons.exit_to_app),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
