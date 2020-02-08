import 'package:flutter/material.dart';
import './screens/payment_screen.dart';
import './screens/history_screen.dart';
import './screens/orders_screen.dart';
import './screens/profile_screen.dart';
import './screens/settings_screen.dart';
import './screens/wallet_screen.dart';

class DrawerScreen extends StatelessWidget {
  static const drawerRoute='/drawer';
  Widget createItems(
      IconData icon, String title, String subtitle, Function click) {
    return Container(
      
      padding: EdgeInsets.only(top: 10),
      child: ListTile(
        onTap: click,
        leading: Icon(
          icon,
          size: 26,
          color: Colors.black54,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'NotoSansKR',
            fontWeight: FontWeight.w700,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
           decoration: new BoxDecoration(
                  image: DecorationImage(
                      image: new AssetImage('assets/images/drawer.jpg'),
                      fit: BoxFit.fill,
                      colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken),
                      ),
                    //  color:Color.fromRGBO(150, 150, 150, 0.9),
                    // colorBlendMode: BlendMode.modulate,
                      ),
            padding: EdgeInsets.only(top: 60, left: 0),
            child:Column(
              children: <Widget>[
               Expanded(child:createItems(Icons.supervised_user_circle, 'Profile',
                    'view,edit your details', () {
                  Navigator.of(context)
                      .pushNamed(PaymentDetailsScreen.paymentDetialsRoute);
                })),
                Expanded(
                                  child: createItems(
                      Icons.history, 'history', 'previous orders and payments',(){
                        Navigator.of(context).pushNamed(HistoryScreen.historyScreenRoute);
                      }),
                ),
                Expanded(
                                  child: createItems(Icons.record_voice_over, 'orders',
                      'keep track of current orders',(){
                        Navigator.of(context).pushNamed(OrderScreen.orderScreenRoute);
                      }),
                ),
                Expanded(
                                  child: createItems(Icons.payment, 'payment details',
                      'link your account for quick transaction',(){
                        Navigator.of(context).pushNamed(PaymentDetailsScreen.paymentDetialsRoute);
                      }),
                ),
                Expanded(
                                  child: createItems(Icons.account_balance_wallet, 'wallet',
                      'manage your personalized wallet',(){
                        Navigator.of(context).pushNamed(WalletScreen.walletScreenRoute);
                      }),
                ),
                SizedBox(height: 160),

               Expanded(child:createItems(Icons.settings, 'settings', 'change setting',(){
                      Navigator.of(context).pushNamed(SettinsScreen.settingScreenRoute);
                    })),

                // createItems(),
              ],
            )));
  }
}
