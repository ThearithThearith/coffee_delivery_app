// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffee_delivery_app/screens/home/widgets/home_banner.dart';
import 'package:coffee_delivery_app/screens/home/widgets/home_beverages.dart';
import 'package:coffee_delivery_app/screens/home/widgets/home_foods.dart';
import 'package:coffee_delivery_app/screens/home/widgets/home_recommend.dart';
import 'package:coffee_delivery_app/screens/home/widgets/home_title.dart';
import 'package:coffee_delivery_app/utils/fab_cart.dart';
import 'package:coffee_delivery_app/utils/scroll_to_hide_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const FabCart(),
      bottomNavigationBar: ScrollToHideWidget(
        controller: _scrollController,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home_max), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.card_giftcard), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.supervised_user_circle), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_box_outlined), label: ''),
            ],
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white70,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: (value) {
              debugPrint(value.toString());
            },
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                //Good morning
                HomeTitle(),
                SizedBox(height: 20),

                //Banner
                HomeBanner(),
                SizedBox(height: 20),

                //Beverages
                HomeBeverages(),
                SizedBox(height: 15),

                //Foods
                HomeFoods(),
                SizedBox(height: 20),

                //Recommends
                HomeRecommend(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
