import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/product_overview_screen.dart';
import './screens/product_detail.dart';
import './providers/product_provider.dart';
import './providers/cart.dart';
import 'screens/cart_screen.dart';
import './providers/orders.dart';
import './screens/orders_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
        ChangeNotifierProvider.value(
          value: Orders(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          fontFamily: "Lato",
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: ProductOverviewScreen.pageRoute,
        routes: {
          ProductOverviewScreen.pageRoute: (context) => ProductOverviewScreen(),
          ProductDetail.pageRoute: (context) => ProductDetail(),
          CartScreen.pageRoute: (context) => CartScreen(),
          OrderScreen.pageRoute: (context) => OrderScreen(),
        },
      ),
    );
  }
}
