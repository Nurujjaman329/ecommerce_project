import 'package:ecommerce_practise/views/buyers/nav_screens/widgets/banner_widget.dart';
import 'package:flutter/material.dart';

import 'widgets/search_input_widgets.dart';
import 'widgets/welcome_text_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 15,
      ),
      child: Column(
        children: [
          WelcomeText(),
          SizedBox(
            height: 14,
          ),
          SearchInputWidget(),
          BannerWidget(),
        ],
      ),
    );
  }
}
