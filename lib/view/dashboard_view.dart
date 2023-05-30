import 'package:buttom_navigation/view/aboutus_view.dart';
import 'package:buttom_navigation/view/home_view.dart';
import 'package:buttom_navigation/view/profile_view.dart';
import 'package:flutter/material.dart';

class Dashboard_view extends StatefulWidget {
  const Dashboard_view({super.key});

  @override
  State<Dashboard_view> createState() => _Dashboard_viewState();
}

class _Dashboard_viewState extends State<Dashboard_view> {
  int _selectedIndex = 0;

  List<Widget> lstBottomScreen =[
    const Home_view(),
    const Aboutus_view(),
    const Profile_view(),
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: lstBottomScreen[_selectedIndex],
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: (){
          Navigator.pushNamed(context, '/homeroute');
        },
        child: const Icon(Icons.qr_code_scanner),
      ),
      bottomNavigationBar: BottomNavigationBar(
        
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Cart'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile'
          ),
          
          
        ],
        backgroundColor: const Color.fromARGB(255, 195, 27, 167),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,

        currentIndex: _selectedIndex,
        onTap: (index){
          setState(() {
            _selectedIndex =index;
          });
        },),

    );
  }
}