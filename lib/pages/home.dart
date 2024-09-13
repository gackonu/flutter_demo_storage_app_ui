import 'package:flutter/material.dart';
import 'package:storage_app/pages/chat_page.dart';
import 'package:storage_app/pages/home_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  int currentpage = 0;
  List<Widget> pages = [HomePage(), const ChatPage()];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: IndexedStack(
        index: currentpage,
        children: pages,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blueAccent,
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueAccent,
        onTap: (value) {
          setState(() {
            currentpage = value;
          });
          
        },
        currentIndex: currentpage,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.timer_outlined,
              ),
              // activeIcon: Icon(Icons.timer_outlined, color: Colors.blueAccent,),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.pie_chart_outline_outlined,
              ),
              // activeIcon: Icon(Icons.timer_outlined, color: Colors.blueAccent,),
              label: '')
        ],
      ),
    );
  }
}
