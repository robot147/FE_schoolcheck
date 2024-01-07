import 'package:flutter_application_1/model/member_data.dart';
import 'package:flutter_application_1/repository/signup_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'signup_view_model.g.dart';

@riverpod
class Signup extends _$Signup {
  @override
  Future<SignupData> build() async {
   
    return const SignupData(
    );
  }

  Future<void> signup({required String email,required String pwd}) async {
    
    SignupRepository().signup(data: SignupData(email: email, pwd: pwd));
   
  }
}