part of 'login_imports.dart';

class LoginViewModel {
  final Repository repository;
  LoginViewModel({required this.repository});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  login(context) async {
    var loginData = await repository.authRepo
        .userLogin(emailController.text, passwordController.text, context);
    if (loginData.accessToken != null) {
      Utils.saveToken(loginData.accessToken.toString());
      AutoRouter.of(context).replace(const GeneralRoute());
    }
  }
}
