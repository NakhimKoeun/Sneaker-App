import 'package:flutter/material.dart';
import 'package:sneakershop/screen/cartscreen.dart';
import 'package:sneakershop/screen/shopscreen.dart';
import 'package:sneakershop/widget/mybuttomnavbar.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  //This selected index is too control the bttom nav bar
  int selectedIndex = 0;
  //This method will update our selected index
  //when the user tap on buttom bar
  void navigatbuttomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

//page to display
  final List<Widget> _pages = [
//shop screen
    Shopscreen(),
//cart screen
    Cartscreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: Mybuttomnavbar(
        onTabChange: (index) => navigatbuttomBar(index),
      ),
      appBar: AppBar(
        leading: Builder(
            builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                )),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          children: [
            //logo
            DrawerHeader(
                child: Image.network(
              "https://imgs.search.brave.com/9_IDuXaDRqTbQ5wN7P4NmfVBhWDY-hm1cyR4oJYH_Kk/rs:fit:860:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy90/aHVtYi9hL2E2L0xv/Z29fTklLRS5zdmcv/NjQwcHgtTG9nb19O/SUtFLnN2Zy5wbmc",
              color: Colors.white,
              width: 150,
            )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23.0),
              child: Divider(
                color: Colors.grey[800],
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.info,
                color: Colors.white,
              ),
              title: Text(
                "About",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Spacer(),
            const ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              title: Text(
                "Logout",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
      body: _pages[selectedIndex],
    );
  }
}
