import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/model/cart.dart';
import 'package:shop/model/product_list.dart';
import 'package:shop/pages/products_detail_page.dart';
import 'package:shop/pages/products_overview_page.dart';
import 'package:shop/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Cart(),
        ),
        ChangeNotifierProvider(
          create: (_) => ProductList(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          snackBarTheme: const SnackBarThemeData(
            backgroundColor: Colors.blue,
          ),
          fontFamily: 'Lato',
          useMaterial3: true,
        ),
        home: const ProductsOverviewPage(),
        routes: {
          AppRoutes.productDetail: (context) => const ProductDetailPage(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
