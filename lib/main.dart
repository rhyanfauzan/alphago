import 'package:alphago/page/beasiswa/beasiswa_page.dart';
import 'package:alphago/page/events/events_page.dart';
import 'package:alphago/page/kompetisi/kompetisi_page.dart';
import 'package:alphago/page/magang/magang_page.dart';
import 'package:alphago/page/webinar/webinar_detail_page.dart';
import 'package:alphago/page/user/bookmark_page.dart';
import 'package:alphago/page/user/profil_page.dart';
import 'package:alphago/page/user/setting_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:alphago/config/app_color.dart';
import 'package:alphago/config/app_route.dart';
import 'package:alphago/config/session.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'firebase_options.dart';
import 'model/user.dart';
import 'page/auth/signin_page.dart';
import 'page/beasiswa/beasiswa_detail_page.dart';
import 'page/artikel/artikel_detail_page.dart';
import 'page/home/home_page.dart';
import 'page/user/profil_pribadi_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  initializeDateFormatting('en_US');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        scaffoldBackgroundColor: AppColor.backgroundScaffold,
        primaryColor: AppColor.primary,
        colorScheme: const ColorScheme.light(
          primary: AppColor.primary,
          secondary: AppColor.secondary,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColor.backgroundScaffold,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(
            color: AppColor.dark,
          ),
          titleTextStyle: TextStyle(
            color: AppColor.dark,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      routes: {
        '/': (context) {
          return FutureBuilder(
            future: Session.getUser(),
            builder: (context, AsyncSnapshot<User> snapshot) {
              if (snapshot.data == null || snapshot.data!.id == null) {
                return SigninPage();
              } else {
                return HomePage();
              }
            },
          );
        },
        AppRoute.home: (context) => HomePage(),
        AppRoute.signin: (context) => SigninPage(),
        AppRoute.beasiswa: (context) => const BeasiswaPage(),
        AppRoute.kompetisi: (context) => const KompetisiPage(),
        AppRoute.events: (context) => const EventsPage(),
        AppRoute.magang: (context) => const MagangPage(),
        AppRoute.artikel: (context) => const BeasiswaPage(),
        AppRoute.webinar: (context) => const BeasiswaPage(),
        AppRoute.webinardetail: (context) => WebinarDetailPage(),
        AppRoute.artikeldetail: (context) => ArtikelDetailPage(),
        AppRoute.beasiswadetail: (context) => BeasiswaDetailPage(),
        AppRoute.profil: (context) => const ProfilPage(),
        AppRoute.profilpribadi: (context) => const ProfilPribadiPage(),
        AppRoute.setting: (context) => const SettingPage(),
        AppRoute.bookmark: (context) => const BookmarkPage(),
      },
    );
  }
}
