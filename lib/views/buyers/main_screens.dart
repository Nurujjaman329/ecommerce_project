import 'package:ecommerce_practise/views/buyers/nav_screens/account_screen.dart';
import 'package:ecommerce_practise/views/buyers/nav_screens/cart_screen.dart';
import 'package:ecommerce_practise/views/buyers/nav_screens/category_screen.dart';
import 'package:ecommerce_practise/views/buyers/nav_screens/home_screens.dart';
import 'package:ecommerce_practise/views/buyers/nav_screens/search_screen.dart';
import 'package:ecommerce_practise/views/buyers/nav_screens/store_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> _pages = [
    HomeScreen(),
    CategoryScreen(),
    StoreScreen(),
    CartScreen(),
    SearchScreen(),
    AccountScreen(),
  ];

  int _pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        onTap: (value) {
          setState(() {
            _pageIndex = value;
          });
        },
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.yellow.shade900,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.home,
              ),
              label: 'HOME'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.category_outlined,
              ),
              label: 'Categories'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.store,
              ),
              label: 'Store'),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.cart,
              ),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.search,
              ),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.profile_circled,
              ),
              label: 'Account'),
        ],
      ),
      body: _pages[_pageIndex],
    );
  }
}
