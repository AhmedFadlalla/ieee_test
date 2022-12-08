import 'package:flutter/material.dart';
import 'package:ieee_test/bmi_screen.dart';
import 'package:ieee_test/home_widget.dart';
import 'package:ieee_test/profile_screen.dart';

import 'chat_screen.dart';
import 'item_component.dart';
import 'notif_screen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex=0;

  List<Widget> screens=[
    HomeWidget(),
    ChatScreen(),
    NotifyScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        actions: [
          Icon(Icons.add)
        ],
        leading: Icon(Icons.arrow_forward_ios),
      ),
      body:screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const[
           BottomNavigationBarItem(
               icon: Icon(Icons.home,color: Colors.green,),label: "Home"),
           BottomNavigationBarItem(icon: Icon(Icons.chat,color: Colors.green,),label: "Home"),
           BottomNavigationBarItem(icon: Icon(Icons.notification_add,color: Colors.green,),label: "Home"),
           BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.green,),label: "Home")
        ],
        currentIndex:currentIndex,
        onTap: (index){
          setState(() {
            currentIndex=index;
          });
        },


      ),

    );
  }
}
