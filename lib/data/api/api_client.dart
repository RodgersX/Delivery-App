import 'package:get/get.dart';

import '../../utils/utils.dart';

class ApiClient extends GetConnect implements GetxService {
  late String token;
  final String appBaseUrl;
  // ignore: unused_field
  late Map<String, String> _mainHeaders;

  ApiClient({required this.appBaseUrl}) {
    baseUrl = appBaseUrl;
    timeout = Duration(seconds: 30); // timeout time
    token = AppConstants.TOKEN;
    _mainHeaders = {
      "Content-Type": "application/json; charset=UTF-8",
      "Authorization": "Bearer $token",
    };
  }

  Future<Response> getData(String uri) async {
    try {
      Response response = await get(uri);
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}
