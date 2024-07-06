import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:e_commerce_final_projects/Core/Classes/request_status.dart';
import 'package:e_commerce_final_projects/Core/Functions/check_internet.dart';
import 'package:http/http.dart' as http;

class Crud {
  /// Sends a POST request to the specified [link] with the provided [data].
  /// Returns either a [RequestStatus] in case of failure, or the response data as a [Map] in case of success.
  Future<Either<RequestStatus, Map<String, dynamic>>> postData(String link, Map<String, dynamic> data) async {
    try {
      // Check if there is an internet connection
      if (await checkInternet()) {
        // Send POST request
        var response = await http.post(
          Uri.parse(link),
          body: jsonEncode(data),
          headers: {'Content-Type': 'application/json'},
        );

        // Handle response
        if (response.statusCode == 200) {
          Map<String, dynamic> responseBody = jsonDecode(response.body);
          return Right(responseBody);
        } else {
          // Log response details for debugging
          print('Server error: ${response.statusCode} - ${response.body}');
          return const Left(RequestStatus.serverFailure);
        }
      } else {
        // No internet connection
        return const Left(RequestStatus.offlineFailure);
      }
    } catch (e) {
      // Log the exception for debugging
      print('Exception occurred: $e');
      return const Left(RequestStatus.serverException);
    }
  }
}
