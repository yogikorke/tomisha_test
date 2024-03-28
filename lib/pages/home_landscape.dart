import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tomisha_test/utils/ui_utils.dart';
import 'package:tomisha_test/values/app_assets.dart';

class HomePageLandscape extends StatefulWidget {
  const HomePageLandscape({super.key, required this.title});

  final String title;

  @override
  State<HomePageLandscape> createState() => _HomePageLandscapeState();
}

class _HomePageLandscapeState extends State<HomePageLandscape> {
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
                thickness: 8,
                height: 8,
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
              height: uiUtils.getHeight() * 0.4,
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    color: const Color(0xffE6FFFA),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Flexible(
                              child: Text(
                                "Deine Job \nWebsite",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                  textStyle: const TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w600,
                                    color: Color(
                                      0xff2D3748,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Container(
                                margin: const EdgeInsets.only(top: 32),
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xff319795),
                                      Color(0xff3182CE)
                                    ],
                                  ),
                                ),
                                child: ElevatedButton(
                                  onPressed: () => {},
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 16,
                                      horizontal: 32,
                                    ),
                                    visualDensity: VisualDensity.compact,
                                    backgroundColor: Colors.transparent,
                                    shadowColor: Colors.transparent,
                                  ),
                                  child: Text(
                                    "Kostenlos Registrieren",
                                    textAlign: TextAlign.right,
                                    style: GoogleFonts.lato(
                                      textStyle: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 128,
                        ),
                        ClipOval(
                          child: Container(
                            color: Colors.white,
                            child: SvgPicture.asset(
                              width: uiUtils.getHeight() * 0.30,
                              height: uiUtils.getHeight() * 0.30,
                              AppAssets.undrawAgreementAajr,
                            ),
                          ),
                        ),
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TabBar(
                    tabAlignment: TabAlignment.center,
                    isScrollable: true,
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
                          textThree: "Mit nur einem Klick bewerben",
                          assetThree: AppAssets.undraw_personal_file_222m,
                        ),
                        TabWidget(
                          title:
                              "Drei einfache Schritte \nzu deinem neuen Mitarbeiter",
                          textOne: "Erstellen dein Unternehmensprofil",
                          assetOne: AppAssets.undraw_Profile_data_re_v81r,
                          textTwo: "Erstellen ein Jobinserat",
                          assetTwo: AppAssets.undraw_about_me_wa29,
                          textThree: "Wähle deinen neuen Mitarbeiter aus",
                          assetThree: AppAssets.undraw_swipe_profiles1_i6mr,
                        ),
                        TabWidget(
                          title:
                              "Drei einfache Schritte \nzur Vermittlung neuer Mitarbeiter",
                          textOne: "Erstellen dein Unternehmensprofil",
                          assetOne: AppAssets.undraw_Profile_data_re_v81r,
                          textTwo:
                              "Erhalte Vermittlungs angebot von Arbeitgeber",
                          assetTwo: AppAssets.undraw_job_offers_kw5d,
                          textThree:
                              "Vermittlung nach Provision oder Stundenlohn",
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
      padding: const EdgeInsets.only(top: 64.0),
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
          // Positioned(
          //   left: 0,
          //   right: 0,
          //   top: uiUtils.getHeight() * 0.15,
          //   child: SvgPicture.asset(assetOne),
          // ),
          // Positioned(
          //   left: uiUtils.getWidth() * 0.16,
          //   right: 0,
          //   top: uiUtils.getHeight() * 0.18,
          //   child: RichText(
          //     text: TextSpan(
          //         text: "1. ",
          //         style: GoogleFonts.lato(
          //           textStyle: const TextStyle(
          //             fontSize: 80,
          //             color: Color(0xff718096),
          //             fontWeight: FontWeight.w500,
          //           ),
          //         ),
          //         children: <TextSpan>[
          //           TextSpan(
          //             text: textOne,
          //             style: GoogleFonts.lato(
          //               textStyle: const TextStyle(
          //                 fontSize: 18,
          //                 color: Color(0xff4A5568),
          //                 fontWeight: FontWeight.w400,
          //               ),
          //             ),
          //           ),
          //         ]),
          //   ),
          // ),
          Positioned(
            left: 0,
            right: 0,
            top: uiUtils.getHeight() * 0.15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                      text: "1. ",
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                          fontSize: 80,
                          color: Color(0xff718096),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: textOne,
                          style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                              fontSize: 18,
                              color: Color(0xff4A5568),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32.0),
                  child: SvgPicture.asset(assetOne),
                ),
              ],
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
            left: uiUtils.getWidth() * 0.45,
            right: 0,
            top: uiUtils.getHeight() * 0.62,
            child: RichText(
              text: TextSpan(
                  text: "2. ",
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                      fontSize: 80,
                      color: Color(0xff718096),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: textTwo,
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                          fontSize: 18,
                          color: Color(0xff4A5568),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
          Positioned(
            left: uiUtils.getWidth() * 0.25,
            top: uiUtils.getHeight() * 0.57,
            child: SvgPicture.asset(assetTwo),
          ),
          Positioned(
            left: uiUtils.getWidth() * 0.23,
            right: 0,
            top: uiUtils.getHeight() * 0.9,
            child: RichText(
              text: TextSpan(
                  text: "3. ",
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                      fontSize: 80,
                      color: Color(0xff718096),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: textThree,
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                          fontSize: 18,
                          color: Color(0xff4A5568),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
          Positioned(
            left: uiUtils.getWidth() * 0.25,
            right: 0,
            top: uiUtils.getHeight() * 0.9,
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
