import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black87,
      child: ListView(
        children:  [
          UserAccountsDrawerHeader(

              accountName: const Text('Ahmad Darawsheh',
                  style: TextStyle(color: Colors.white)),
              accountEmail: const Text(
                'Darawsheh@gmail.com',
                style: TextStyle(color: Colors.white),
              ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(

                child:Image.asset('images/wa.png',fit:BoxFit.cover,width: 90,height: 90, ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.black38,
             image:DecorationImage( image: AssetImage('shawp.jpg'),fit: BoxFit.cover),

            ),
          ),
          const ListTile(
            leading: Icon(Icons.favorite,color: Colors.red,),
            title: Text('Favorites'),
          ),
          const ListTile(
            leading: Icon(Icons.people,color: Colors.blue),
            title: Text('Friends',),
          ),
          const ListTile(
            leading: Icon(Icons.settings,color: Colors.grey,),
            title: Text('Settings'),
          ),

        ],
      ),
    );
  }
}
