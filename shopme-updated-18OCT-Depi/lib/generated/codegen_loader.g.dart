// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> ar = {
  "SignIn": {
    "name": "تطبيق الملابس ",
    "signIn": "تسجيل الدخول ",
    "email": "ادخل بريدك الالكترونى",
    "continue": " استمرار ",
    "Donot_you_have_an_account": " لا تملك حساب ؟",
    "Create_one": " قم بعمل حساب جديد "
  },
  "SignUp": {
    "Create_Account": "انشئ حساب جديد",
    "Firstname": "الاسم الاول",
    "Lastname": "الاسم الاخير",
    "Email_Address": "عنوان البريد الاليكترونى",
    "Password": "كلمة المرور",
    "Continue": "استمرار",
    "Do_you_have_an_account": "لديك حساب بالفعل ؟ ",
    "Signin": "تسجيل الدخول"
  },
  "PasswordReset": {
    "sentEmail": "لقد أرسلنا لك بريدًا إلكترونيًا لإعادة تعيين كلمة المرور الخاصة بك.",
    "Return_to_Login": "العوده لصفحه تسجيل الدخول "
  },
  "GenderAndAge": {
    "Tell_us_about_yourself": "حدثنا عن نفسك",
    "Men": "رجال",
    "Women": "نساء",
    "How_old_are_you": "كم عمرك؟",
    "Finish": "إنهاء"
  },
  "ForgotPassword": {
    "Forgot_Password": "نسيت كلمة المرور",
    "Enter_Email": "أدخل البريد الإلكتروني",
    "Continue": "استمرار"
  },
  "EnterPassword": {
    "Sign_in": "تسجيل الدخول",
    "Enter_Password": "أدخل كلمة المرور",
    "Continue": "استمرار",
    "Forgot_password": "نسيت كلمة المرور؟",
    "Reset": "إعادة تعيين"
  },
  "HomeCategories": {
    "Categories": "الفئات",
    "See_All": "عرض الكل"
  },
  "HomeHeader": {
    "Men": "رجال",
    "Women": "نساء"
  },
  "Homesearch": {
    "search": "بحث"
  },
  "HomeTopSelling": {
    "Top_Selling": "الأكثر مبيعًا"
  }
};
static const Map<String,dynamic> en = {
  "SignIn": {
    "name": "Clothes App",
    "signIn": "sign In",
    "email": "Enter Your Email",
    "continue": " Continue ",
    "Donot_you_have_an_account": "Don't you have an account?",
    "Create_one": "Create one"
  },
  "SignUp": {
    "Create_Account": "Create Account",
    "Firstname": "Firstname",
    "Lastname": "Lastname",
    "Email_Address": "Email Address",
    "Password": "Password",
    "Continue": "Continue",
    "Do_you_have_an_account": "Do you have an account? ",
    "Signin": "Signin"
  },
  "PasswordReset": {
    "sentEmail": "We Sent you an Email to reset your password.",
    "Return_to_Login": "Return to Login"
  },
  "GenderAndAge": {
    "Tell_us_about_yourself": "Tell us about yourself",
    "Men": "Men",
    "Women": "Women",
    "How_old_are_you": "How old are you?",
    "Finish": "Finish"
  },
  "ForgotPassword": {
    "Forgot_Password": "Forgot Password",
    "Enter_Email": "Enter Email",
    "Continue": "Continue"
  },
  "EnterPassword": {
    "Sign_in": "Sign in",
    "Enter_Password": "Enter Password",
    "Continue": "Continue",
    "Forgot_password": "Forgot password? ",
    "Reset": "Reset"
  },
  "HomeCategories": {
    "Categories": "Categories",
    "See_All": "See All"
  },
  "HomeHeader": {
    "Men": "Men",
    "Women": "Women"
  },
  "Homesearch": {
    "search": "search"
  },
  "HomeTopSelling": {
    "Top_Selling": "Top Selling"
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ar": ar, "en": en};
}
