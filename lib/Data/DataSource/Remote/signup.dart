import '../../../Core/Classes/crud.dart';
import '../../../Core/Constant/linkes.dart';

class SignupData {
  Crud crud;
  SignupData(this.crud);
  post(String username, String password, String email, String phone) async {
    var response = await crud.postData(AppLinkes.signUp, {
      "username": username,
      "password": password,
      "email": email,
      "phone": phone,
    });
    print("--------------------------$response");
    return response.fold((l) => l, (r) => r);
  }
}
