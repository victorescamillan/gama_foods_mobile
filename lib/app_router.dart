import 'package:flutter/material.dart';
import 'package:projects/pages/ar_invoice/ar_invoice_list_page.dart';
import 'package:projects/pages/auth/login_page.dart';
import 'package:projects/pages/delivery_receipt/dr_list_page.dart';
import 'package:projects/pages/home/home_page.dart';
import 'package:projects/pages/not_found/not_found_page.dart';

class Routes {
  static const homeRoute = '/';
  static const loginRoute = '/login';
  static const arInvoiceRoute = '/arInvoice';
  static const deliveryReceiptRoute = '/deliveryReceipts';
  static const notFoundRoute = '/notFound';
}

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
      switch (settings.name) {
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case Routes.arInvoiceRoute:
        return MaterialPageRoute(builder: (_) => const ARInvoiceListPage());
      case Routes.deliveryReceiptRoute:
        return MaterialPageRoute(builder: (_) => const DRListPage());
      case Routes.notFoundRoute:
        return MaterialPageRoute(builder: (_) => const NotFoundPage());
      default:
        return MaterialPageRoute(
            builder: (_) => NotFoundPage(page: settings.name ?? '',));
    }
  }
}