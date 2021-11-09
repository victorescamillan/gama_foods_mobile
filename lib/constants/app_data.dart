import 'package:projects/app_router.dart';
import 'package:projects/core/models/app_module.dart';

class AppData {
  List<AppModule> getAppModules(){
    return [
      AppModule(name: 'A/R Invoices', route: Routes.arInvoiceRoute),
      AppModule(name: 'Delivery Receipts', route: Routes.deliveryReceiptRoute),
    ];
  }
}