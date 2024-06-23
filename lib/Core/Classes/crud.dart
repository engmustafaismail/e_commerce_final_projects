import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:e_commerce_final_projects/Core/Classes/request_status.dart';
import 'package:e_commerce_final_projects/Core/Functions/check_internet.dart';
import 'package:http/http.dart' as http;

class Crud {
  Future<Either<RequestStatus, Map>> postData(String link, Map data) async {
    try {
      if (await checkInternet()) {
        var response = await http.post(
          Uri.parse(link),
          body: jsonEncode(data),
        );
        if (response.statusCode == 200) {
          Map responseBody = jsonDecode(response.body);
          return Right(responseBody);
        } else {
          return const Left(RequestStatus.serverFailure);
        }
      } else {
        return const Left(RequestStatus.offlineFailure);
      }
    } catch (_) {
      return const Left(RequestStatus.serverFailure);
    }
  }
}
