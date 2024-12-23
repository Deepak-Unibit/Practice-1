import 'package:flutter/services.dart';
import 'package:get/get.dart';

class GraphController extends GetxController {
  final List<SalesData> data1 = [
    SalesData('Jan', 35),
    SalesData('Feb', 28),
    SalesData('Mar', 34),
    SalesData('Apr', 32),
    SalesData('May', 40)
  ];

  final List<SalesData> data2 = [
    SalesData('Jan', 10),
    SalesData('Feb', 34),
    SalesData('Mar', 45),
    SalesData('Apr', 77),
    SalesData('May', 20),
    SalesData('Jun', 86),
    SalesData('Jul', 20),
  ];

  GraphController() {
    Future.delayed(500.milliseconds, ()async{
      // final androidIdPlugin = AndroidId();
      // final String? androidId = await androidIdPlugin.getId();
      final dynamic macAddress = await const MethodChannel('get_mac').invokeMethod('getMacAddress');
      print("Mac Address: $macAddress");
      // print(androidId);
    });
  }
}

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final double sales;
}