import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce/common/helper/navigator/app_navigator.dart';
import 'package:ecommerce/common/widgets/button/basic_app_button.dart';
import 'package:ecommerce/data/auth/models/user_signin_req.dart';
import 'package:ecommerce/generated/locale_keys.g.dart';
import 'package:ecommerce/presentation/auth/pages/enter_password.dart';
import 'package:ecommerce/presentation/auth/pages/signup.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatelessWidget {
  SigninPage({super.key});

  final TextEditingController _emailCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title:  Text(
          LocaleKeys.SignIn_name.tr(),
          style: TextStyle(fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 234, 216, 238)),
        ),
        actions: [
          IconButton(
            icon: Icon(
              EasyLocalization.of(context)!.currentLocale?.languageCode == 'en'
                  ? Icons.language
                  : Icons.language_outlined,
            ),
            onPressed: () {
              final newLocale = EasyLocalization.of(context)!.currentLocale?.languageCode == 'en'
                  ? const Locale('ar')
                  : const Locale('en');
              context.setLocale(newLocale);
            },
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _siginText(context),
            const SizedBox(height: 20),
            _emailField(context),
            const SizedBox(height: 20),
            _continueButton(context),
            const SizedBox(height: 20),
            _createAccount(context),
          ],
        ),
      ),
    );
  }

  Widget _siginText(BuildContext context) {
    return Text(
      LocaleKeys.SignIn_signIn.tr(),
      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    );
  }

  Widget _emailField(BuildContext context) {
    return TextField(
      controller: _emailCon,
      decoration: InputDecoration(hintText: LocaleKeys.SignIn_email.tr()),
    );
  }

  Widget _continueButton(BuildContext context) {
    return BasicAppButton(
      onPressed: () {
        AppNavigator.push(
          context,
          EnterPasswordPage(
            signinReq: UserSigninReq(
              email: _emailCon.text,
            ),
          ),
        );
      },
      title: LocaleKeys.SignIn_continue.tr(),
    );
  }

  Widget _createAccount(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: LocaleKeys.SignIn_Donot_you_have_an_account.tr()),
          TextSpan(
            text: LocaleKeys.SignIn_Create_one.tr(),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                AppNavigator.push(context, SignupPage());
              },
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
