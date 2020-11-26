import 'package:flutter/material.dart';
import '../screens/orders_screen.dart';
import '../screens/product_overview_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        AppBar(
          title: Text('Hello'),
          automaticallyImplyLeading: false,
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.shop),
          title: Text('Shop'),
          onTap: () => Navigator.of(context)
              .pushReplacementNamed(ProductOverviewScreen.pageRoute),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.payment),
          title: Text('Order'),
          onTap: () =>
              Navigator.of(context).pushReplacementNamed(OrderScreen.pageRoute),
        )
      ]),
    );
  }
}
