import 'package:flutter/material.dart';
import './screens/home_screen.dart';
import 'real_bottom_bar.dart';
import './screens/subscription_screen.dart';
import 'bottom_bar.dart';
import './drawer.dart';
import './screens/home_screen.dart';
import './screens/favorite_screen.dart';
import './screens/subscription_screen.dart';
import './real_bottom_bar.dart';
import './screens/history_screen.dart';
import './screens/orders_screen.dart';
import './screens/profile_screen.dart';
import './screens/settings_screen.dart';
import './screens/wallet_screen.dart';
import './screens/payment_screen.dart';
import './screens/type_of_milk.dart';
import './screens/brands_screen.dart';
import './screens/cart_screen.dart';
void main() => runApp(Dairy());

class Dairy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(
        primaryColor: Colors.indigoAccent,
        accentColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
         '/': (ctx) => BottomBar(),
          DrawerScreen.drawerRoute:(ctx)=>DrawerScreen(),
          HomeScreen.homeRoute:(ctx)=>HomeScreen(),
          CartScreen.cartRoute:(ctx)=>CartScreen(),
         Subscription.routeSub:(ctx)=>Subscription(),
         FavoriteScreen.routeFav:(ctx)=>FavoriteScreen(),
        HistoryScreen.historyScreenRoute:(ctx)=>HistoryScreen(),
        OrderScreen.orderScreenRoute:(ctx)=>OrderScreen(),
        PaymentDetailsScreen.paymentDetialsRoute:(ctx)=>PaymentDetailsScreen(),
        ProfileScreen.profileScreenRoute:(ctx)=>ProfileScreen(),
        SettinsScreen.settingScreenRoute:(ctx)=>SettinsScreen(),
        WalletScreen.walletScreenRoute:(ctx)=>WalletScreen(),
        BrandScreen.bransScreen:(ctx)=>BrandScreen(),
        TypeOfMilkScreen.milkTypeScreen:(ctx)=>TypeOfMilkScreen(),
      },

      // bottomNavigationBar:BottomBar(),
    );
  }
}
