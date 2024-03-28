import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tomisha_test/utils/ui_utils.dart';
import 'package:tomisha_test/values/app_assets.dart';

class HomePagePortrait extends StatefulWidget {
  const HomePagePortrait({super.key, required this.title});

  final String title;

  @override
  State<HomePagePortrait> createState() => _HomePagePortraitState();
}

class _HomePagePortraitState extends State<HomePagePortrait> {
  // Set the Status Bar color and the icon brightness

  @override
  Widget build(BuildContext context) {
    UiUtils uiUtils = UiUtils(context);

    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(64),
          child: Column(
            children: [
              const Divider(
                indent: 0,
                endIndent: 0,
                thickness: 4,
                height: 4,
                color: Color(0xff319795),
              ),
              Container(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                alignment: Alignment.centerRight,
                decoration: BoxDecoration(
                  color: Colors.white, // Container color
                  // Rounded corners at the bottom
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                  // Shadow
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2), // Shadow color
                      spreadRadius: 0,
                      blurRadius: 6,
                      offset: const Offset(0, 3), // Position of shadow
                    ),
                  ],
                ),
                child: TextButton(
                  onPressed: () => {},
                  child: Text(
                    "Login",
                    textAlign: TextAlign.right,
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(
                          0xff319795,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        body: ListView(
          shrinkWrap: true,
          children: [
            Container(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              height: uiUtils.getHeight() * 0.80,
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    color: const Color(0xffE6FFFA),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Deine Job \nWebsite",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                              fontSize: 42,
                              fontWeight: FontWeight.w600,
                              color: Color(
                                0xff2D3748,
                              ),
                            ),
                          ),
                        ),
                        SvgPicture.asset(AppAssets.undrawAgreementAajr),
                      ],
                    ),
                  ),
                  ClipPath(
                    clipper: CustomClipPathOne(),
                    child: Container(
                      height: uiUtils.getHeight() * 0.10,
                      color: const Color(0xffE6FFFA),
                    ),
                  )
                ],
              ),
            ),
            DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  TabBar(
                    labelColor: const Color(0xff319795),
                    indicatorColor: const Color(0xff319795),
                    unselectedLabelColor: const Color(0xff707070),
                    labelStyle: GoogleFonts.lato(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    tabs: const [
                      Tab(text: "Arbeitnehmer"),
                      Tab(text: "Arbeitgeber"),
                      Tab(text: "Temporärbüro"),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 1.4,
                    child: const TabBarView(
                      children: [
                        TabWidget(
                          title: "Drei einfache Schritte \nzu deinem neuen Job",
                          textOne: "Erstellen dein Lebenslauf",
                          assetOne: AppAssets.undraw_Profile_data_re_v81r,
                          textTwo: "Erstellen dein Lebenslauf",
                          assetTwo: AppAssets.undraw_task_31wc,
                          textThree: "Mit nur einem Klick\nbewerben",
                          assetThree: AppAssets.undraw_personal_file_222m,
                        ),
                        TabWidget(
                          title:
                              "Drei einfache Schritte \nzu deinem neuen Mitarbeiter",
                          textOne: "Erstellen dein \nUnternehmensprofil",
                          assetOne: AppAssets.undraw_Profile_data_re_v81r,
                          textTwo: "Erstellen ein Jobinserat",
                          assetTwo: AppAssets.undraw_about_me_wa29,
                          textThree: "Wähle deinen \nneuen Mitarbeiter aus",
                          assetThree: AppAssets.undraw_swipe_profiles1_i6mr,
                        ),
                        TabWidget(
                          title:
                              "Drei einfache Schritte \nzur Vermittlung neuer Mitarbeiter",
                          textOne: "Erstellen dein \nUnternehmensprofil",
                          assetOne: AppAssets.undraw_Profile_data_re_v81r,
                          textTwo:
                              "Erhalte Vermittlungs- \nangebot von Arbeitgeber",
                          assetTwo: AppAssets.undraw_job_offers_kw5d,
                          textThree:
                              "Vermittlung nach \nProvision oder \nStundenlohn",
                          assetThree: AppAssets.undraw_business_deal_cpi9,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            // color: Colors.white, // Container color
            // Rounded corners at the bottom
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            // Shadow
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5), // Shadow color
                spreadRadius: 0,
                blurRadius: 6,
                offset: const Offset(0, 3), // Position of shadow
              ),
            ],
          ),
          child: BottomAppBar(
            height: 64,
            elevation: 8,
            surfaceTintColor: Colors.white,
            shadowColor: Colors.white,
            color: Colors.white,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                gradient: LinearGradient(
                  colors: [Color(0xff319795), Color(0xff3182CE)],
                ),
              ),
              child: ElevatedButton(
                onPressed: () => {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  visualDensity: VisualDensity.compact,
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                ),
                child: Text(
                  "Kostenlos Registrieren",
                  textAlign: TextAlign.right,
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TabWidget extends StatelessWidget {
  final String title;
  final String textOne, textTwo, textThree;
  final String assetOne, assetTwo, assetThree;

  const TabWidget({
    super.key,
    required this.title,
    required this.textOne,
    required this.textTwo,
    required this.textThree,
    required this.assetOne,
    required this.assetTwo,
    required this.assetThree,
  });

  @override
  Widget build(BuildContext context) {
    UiUtils uiUtils = UiUtils(context);
    debugPrint("uiUtils.getHeight() : ${uiUtils.getHeight()}");

    return Padding(
      padding: const EdgeInsets.only(top: 32.0),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                textStyle: const TextStyle(
                  fontSize: 21,
                  color: Color(0xff4A5568),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: uiUtils.getHeight() * 0.0819,
            child: SvgPicture.asset(assetOne),
          ),
          Positioned(
            left: 8,
            top: uiUtils.getHeight() * 0.1638,
            child: Text(
              "1. ",
              style: GoogleFonts.lato(
                textStyle: const TextStyle(
                  fontSize: 130,
                  color: Color(0xff718096),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Positioned(
            right: 64,
            top: uiUtils.getHeight() * 0.3276,
            child: Text(
              textOne,
              style: GoogleFonts.lato(
                textStyle: const TextStyle(
                  fontSize: 15.75,
                  color: Color(0xff4A5568),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Positioned(
            top: uiUtils.getHeight() * 0.2099,
            child: ClipPath(
              clipper: CustomClipPathTwo(),
              child: Container(
                width: uiUtils.getWidth(),
                height: uiUtils.getHeight() * 0.90,
                color: const Color(0xffE6FFFA),
              ),
            ),
          ),
          Positioned(
            left: 32,
            top: uiUtils.getHeight() * 0.3688,
            child: Text(
              "2. ",
              style: GoogleFonts.lato(
                textStyle: const TextStyle(
                  fontSize: 130,
                  color: Color(0xff718096),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Positioned(
            right: 64,
            top: uiUtils.getHeight() * 0.5278,
            child: Text(
              textTwo,
              style: GoogleFonts.lato(
                textStyle: const TextStyle(
                  fontSize: 15.75,
                  color: Color(0xff4A5568),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: uiUtils.getHeight() * 0.5941,
            child: SvgPicture.asset(assetTwo),
          ),
          Positioned(
            left: 64,
            top: uiUtils.getHeight() * 0.7887,
            child: Text(
              "3. ",
              style: GoogleFonts.lato(
                textStyle: const TextStyle(
                  fontSize: 130,
                  color: Color(0xff718096),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Positioned(
            right: 64,
            top: uiUtils.getHeight() * 0.8643,
            child: Text(
              textThree,
              style: GoogleFonts.lato(
                textStyle: const TextStyle(
                  fontSize: 15.75,
                  color: Color(0xff4A5568),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: uiUtils.getHeight() * 1.0243,
            child: SvgPicture.asset(assetThree),
          ),
        ],
      ),
    );
  }
}

class CustomClipPathOne extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0009667, size.height * -0.0038200);
    path_0.lineTo(0, size.height * 0.1398800);
    path_0.quadraticBezierTo(size.width * 0.0016667, size.height * 0.3016400,
        size.width * 0.0022222, size.height * 0.3736400);
    path_0.quadraticBezierTo(size.width * 0.2088333, size.height * 0.6003800,
        size.width * 0.5135222, size.height * 0.3359200);
    path_0.quadraticBezierTo(size.width * 0.7679889, size.height * 0.0707800,
        size.width * 0.9959444, size.height * 0.2920200);
    path_0.quadraticBezierTo(size.width * 0.9959444, size.height * 0.2185200,
        size.width * 0.9959444, size.height * 0.1404000);
    path_0.lineTo(size.width * 0.9965222, size.height * -0.0050400);
    path_0.lineTo(size.width * 0.5034778, size.height * -0.0002600);
    path_0.lineTo(size.width * 0.0009667, size.height * -0.0038200);
    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class CustomClipPathTwo extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * -0.0016000, size.height * 0.2025200);
    path_0.cubicTo(
        size.width * -0.0023833,
        size.height * 0.6591050,
        size.width * -0.0023833,
        size.height * 0.6591050,
        size.width * -0.0026444,
        size.height * 0.8113000);
    path_0.cubicTo(
        size.width * 0.1255333,
        size.height * 0.6954800,
        size.width * 0.3357333,
        size.height * 0.6791000,
        size.width * 0.4460111,
        size.height * 0.6960400);
    path_0.cubicTo(
        size.width * 0.5732889,
        size.height * 0.6904600,
        size.width * 0.7801556,
        size.height * 0.8041600,
        size.width * 1.0028556,
        size.height * 0.5855600);
    path_0.cubicTo(
        size.width * 1.0022333,
        size.height * 0.4373200,
        size.width * 1.0019139,
        size.height * 0.2967800,
        size.width * 1.0016000,
        size.height * 0.2005200);
    path_0.cubicTo(
        size.width * 0.8449222,
        size.height * 0.1236200,
        size.width * 0.7685444,
        size.height * 0.2619200,
        size.width * 0.4941556,
        size.height * 0.2680600);
    path_0.cubicTo(
        size.width * 0.1881556,
        size.height * 0.2624200,
        size.width * 0.2543889,
        size.height * 0.2053400,
        size.width * -0.0016000,
        size.height * 0.2025200);
    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
