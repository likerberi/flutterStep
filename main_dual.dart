import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart' hide Provider;
import '../models/cart.dart';
import '../models/catalog.dart';
import '../Screens/cart_page.dart';
import 'Screens/catalog_page.dart';
import '../Screens/login_page.dart';
import 'sign.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
      ProviderScope(child: MyApp())); 	// riverpod
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(				// provider
      providers: [
        Provider<CatalogModel>(create: (context) => CatalogModel()
            ),
        ChangeNotifierProxyProvider<CatalogModel, CartModel>(
            create: (context) => CartModel(),
            update: (context, catalog, cart) {
              if (cart == null) throw ArgumentError.notNull('cart');
              cart.catalog = catalog;
              return cart;
            })
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '구매 프로젝트',
        initialRoute: '/',
        routes: {
          '/': (context) => FirebaseAuthenticationDDD(),
          '/catalog': (context) => MyCatalog(),
          '/cart': (context) => MyCart(),
        },
      ),
    );
  }
}
