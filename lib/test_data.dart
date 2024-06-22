import 'package:e_commerce_final_projects/Core/Classes/crud.dart';
import 'package:e_commerce_final_projects/Core/Constant/linkes.dart';

class TestData {
  Crud crud;
  TestData(this.crud);
  getData() async {
    var response = await crud.postData(AppLinkes.test, {"su":"jdjdjdj"});
   return response.fold((l) => l, (r) => r);
  }
}
