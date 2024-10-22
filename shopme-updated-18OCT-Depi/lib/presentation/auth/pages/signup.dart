import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce/common/helper/navigator/app_navigator.dart';
import 'package:ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce/common/widgets/button/basic_app_button.dart';
import 'package:ecommerce/data/auth/models/user_creation_req.dart';
import 'package:ecommerce/generated/locale_keys.g.dart';
import 'package:ecommerce/presentation/auth/pages/gender_and_age_selection.dart';
import 'package:ecommerce/presentation/auth/pages/siginin.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  final TextEditingController _firstNameCon = TextEditingController();
  final TextEditingController _lastNameCon = TextEditingController();
  final TextEditingController _emailCon = TextEditingController();
  final TextEditingController _passwordCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppbar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 40
      ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _siginText(),
            const SizedBox(height: 20,),
            _firstNameField(),
            const SizedBox(height: 20,),
            _lastNameField(),
            const SizedBox(height: 20,),
            _emailField(),
            const SizedBox(height: 20,),
            _passwordField(context),
            const SizedBox(height: 20,),
            _continueButton(context),
            const SizedBox(height: 20,),
            _createAccount(context)
          ],
        ),
      ),
    );
  }

  Widget _siginText() {
    return  Text(
      LocaleKeys.SignUp_Create_Account.tr(),
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold
      ),
    );
  }

  Widget _firstNameField() {
    return TextField(
      controller: _firstNameCon,
      decoration:  InputDecoration(
        hintText: LocaleKeys.SignUp_Firstname.tr()
      ),
    );
  }

  Widget _lastNameField() {
    return TextField(
      controller: _lastNameCon,
      decoration:  InputDecoration(
        hintText: LocaleKeys.SignUp_Lastname.tr()
      ),
    );
  }

  Widget _emailField() {
    return TextField(
      controller: _emailCon,
      decoration:  InputDecoration(
        hintText: LocaleKeys.SignIn_email.tr()
      ),
    );
  }

  Widget _passwordField(BuildContext context) {
    return TextField(
      controller: _passwordCon,
      decoration:  InputDecoration(
        hintText: LocaleKeys.SignUp_Password.tr()
      ),
    );
  }

  Widget _continueButton(BuildContext context) {
    return BasicAppButton(
      onPressed: (){
        AppNavigator.push(
          context,
          GenderAndAgeSelectionPage(
            userCreationReq: UserCreationReq(
              firstName: _firstNameCon.text,
              email: _emailCon.text, 
              lastName: _lastNameCon.text,
              password: _passwordCon.text
            ),
          )
        );
      },
      title: LocaleKeys.SignUp_Continue.tr()
    );
  }

  Widget _createAccount(BuildContext context) {
    return RichText(
      text: TextSpan(
        children:  [
           TextSpan(
            text: LocaleKeys.SignUp_Do_you_have_an_account.tr()
          ),
           TextSpan(
            text: LocaleKeys.SignUp_Signin.tr(),
            recognizer:TapGestureRecognizer()..onTap = () {
              AppNavigator.pushReplacement(context, SigninPage());
            } ,
            style: const TextStyle(
              fontWeight: FontWeight.bold
            )
          )
        ]

      ),
    );
  }
}