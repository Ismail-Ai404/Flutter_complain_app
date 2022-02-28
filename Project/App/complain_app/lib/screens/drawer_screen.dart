import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  static const _imageUrl =
      'https://cdn.pixabay.com/photo/2020/01/21/16/56/owl-4783407_960_720.png';

  static var _accessLevel = 3;
  Widget _faculty(int x) {
    if (x == 2 || x == 3) {
      return ListTile(
        leading: Icon(
          Icons.check_box_outlined,
          size: 40,
          semanticLabel: 'Review Box',
        ),
        title: Text(
          'Review',
          style: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
        ),
        onTap: () {},
      );
    }
    return Container();
  }

  Widget _sytemAdmin(int x) {
    if (x == 3) {
      return Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.person_add_alt_1_sharp,
              size: 40,
              semanticLabel: 'Create Account',
            ),
            title: Text(
              'Create account',
              style: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.edit_note_sharp,
              size: 40,
              semanticLabel: 'Edit Complains',
            ),
            title: Text(
              'Edit Complains',
              style: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.delete_sweep_rounded,
              size: 40,
              semanticLabel: 'Delete Complains',
            ),
            title: Text(
              'Delete Complains',
              style: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.transfer_within_a_station_rounded,
              size: 40,
              semanticLabel: 'Delete Complains',
            ),
            title: Text(
              'Complain on Behalf',
              style: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
            onTap: () {},
          ),
        ],
      );
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.amber[50],
      semanticLabel: 'hello',
      elevation: 15,
      child: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            padding: const EdgeInsets.only(
              top: 20,
              //right: 2,
              //left: 4,
              bottom: 10,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  //topLeft: Radius.circular(15),
                  //topRight: Radius.circular(15),
                  ),
              child: Image.network(
                _imageUrl,
                height: 200,
                width: double.infinity,
                fit: BoxFit.fitWidth,
                color: Colors.indigo[900],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(
              Icons.mail,
              size: 40,
              semanticLabel: 'Inbox',
            ),
            title: Text(
              'Inbox',
              style: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
            onTap: () {},
          ),
          _faculty(_accessLevel),
          _sytemAdmin(_accessLevel),
          ListTile(
            leading: Icon(
              Icons.settings,
              size: 40,
              semanticLabel: 'Settings',
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.logout_rounded,
              size: 40,
              semanticLabel: 'Logout',
            ),
            title: Text(
              'Logout',
              style: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
