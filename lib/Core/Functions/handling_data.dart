import 'package:e_commerce_final_projects/Core/Classes/request_status.dart';

RequestStatus handlingData(response) {
  if (response == RequestStatus.offlineFailure ||
      response == RequestStatus.serverFailure) {
    return response;
  } else {
    return RequestStatus.success;
  }
  // if (response is RequestStatus) {
  //   return response;
  // } else {
  //   return RequestStatus.success;
  // }
}
