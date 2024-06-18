import 'package:e_commerce_final_projects/Core/Constant/routes_of_pages.dart';
import 'package:e_commerce_final_projects/Core/Localization/controller/local_controller.dart';
import 'package:e_commerce_final_projects/Core/Services/services.dart';
import 'package:e_commerce_final_projects/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import 'Core/Constant/theme.dart';
import 'Core/Localization/translations.dart';
import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LanguageController controller = Get.put(LanguageController());
    return GetMaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: englishTheme,
      // translations: MyTranslations(),
      locale: controller.language,
      initialRoute: RoutesOfPages.languagePage,
      // initialRoute: RoutesOfPages.onboarding,
      getPages: routes,
      
      debugShowCheckedModeBanner: false,
    );
  }
}











          // PopupMenuButton(itemBuilder: (context) {
          //   return [
          //     PopupMenuItem(
          //       child: Row(
          //         children: [
          //           Text(S.of(context).chooselan),
          //           const SizedBox(
          //             width: 20,
          //           ),
          //           const Icon(Icons.translate)
          //         ],
          //       ),
          //       onTap: () {
          //         Get.to(() => const LanguagePage());
          //       },
          //     ),
          //   ];
          // })
       