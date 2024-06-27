import 'package:e_commerce_final_projects/Core/Classes/request_status.dart';
import 'package:e_commerce_final_projects/Core/Constant/images_assets.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HandlingDataView extends StatelessWidget {
  final RequestStatus requestStatus;
  final Widget widget;
  const HandlingDataView({
    super.key,
    required this.requestStatus,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    if (requestStatus == RequestStatus.loading) {
      return Center(
        child: Lottie.asset(AppImageAssets.loader),
        //     Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Text("Loding..."),
        //     CircularProgressIndicator(),
        //   ],
        // ),
      );
    } else if (requestStatus == RequestStatus.serverFailure) {
      return Center(child: Lottie.asset(AppImageAssets.servererror,width: 200,height: 200));
    } else if (requestStatus == RequestStatus.offlineFailure) {
      return Center(child: Lottie.asset(AppImageAssets.offline,));
    } else if (requestStatus == RequestStatus.failure) {
      return Center(child: Lottie.asset(AppImageAssets.failed));
    } else {
      return widget;
    }
  }
}
