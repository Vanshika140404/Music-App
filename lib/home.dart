
import 'package:appwrite/models.dart';
import 'package:flutter/material.dart';
import 'package:task_3/appwrite/appwritecontrollers.dart';
import 'package:task_3/components/editpick.dart';
import 'package:task_3/components/recent.dart';
import 'package:task_3/components/search.dart';
// import 'package:task_3/pages/login.dart';

class Homepage extends StatefulWidget {
   Homepage({super.key});
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late User _currentUser;
  bool isLoading = true;
  int currentIndex = 0; 

  final List<Widget> pages = [
    ListView(
      padding: EdgeInsets.all(8),
      children: [
        RecentlyPlayedSection(),
        EditorsPicksSection()
      ],
    ),
    ListView(
      padding: EdgeInsets.all(8),
      children: [
        Searchpage(),
        // EditorsPicksSection()
      ],
    ),
    Center(child: Text('Library', style: TextStyle(color: Colors.white))),
    
  ];
  @override
  void initState() {
    getUser().then((value) {
      setState(() {
        _currentUser = value!;
        isLoading = false;
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: pages[currentIndex], 
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex:currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index; 
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.format_list_bulleted_outlined),
            label: 'Library',
          ),
        ],
      ),
    );
  }
}
