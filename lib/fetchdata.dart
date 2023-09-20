import 'dart:convert';

import 'package:chart/charts.dart';
import 'package:dio/dio.dart';

// class fetchdata{
//   List<> salesdata = [];
//  final Dio dio;

//   fetchdata({required this.dio});
//    Future<List<SalesData>> fetchallproudcts() async {
//     salesdata = [];
//     Response response = await dio.get('path');
// List<SalesData> saleslist=jsonDecode(response.data);

//     for (int i = 0; i < saleslist.length; i++) {
//       salesdata.add(SalesData.fromjson(saleslist[i]));
//     }
//     return salesdata;
//   }
// }
class api {
  final Dio dio;

  api({required this.dio});
  Future<List<Map<String, dynamic>>> getdata({
    String? url,
    Map<String, dynamic>? parameter,
  }) async {
    final Response response = await dio.get(
        'http://192.168.1.5/ErpAPI/ErpAPI.ashx?op=get_permit_statistics_list&of=json');
    var data = response.data as List<Map<String, dynamic>>;
    print(data);
    return data;
  }
}
