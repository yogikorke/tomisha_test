import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tomisha_test/values/app_assets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Set the Status Bar color and the icon brightness

  @override
  Widget build(BuildContext context) {
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
              height: MediaQuery.sizeOf(context).height * 0.80,
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
                    clipper: CustomClipPath(),
                    child: Container(
                      height: MediaQuery.sizeOf(context).height * 0.10,
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
                    height: MediaQuery.of(context).size.height,
                    child: TabBarView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 32.0),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                right: 0,
                                child: Text(
                                  "Drei einfache Schritte \nzu deinem neuen Job",
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
                                top: 64,
                                child: SvgPicture.asset(
                                  AppAssets.undraw_Profile_data_re_v81r,
                                ),
                              ),
                              Positioned(
                                left: 8,
                                top: 128,
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
                                top: 256,
                                child: Text(
                                  "Erstellen dein Lebenslauf",
                                  style: GoogleFonts.lato(
                                    textStyle: const TextStyle(
                                      fontSize: 15.75,
                                      color: Color(0xff4A5568),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Text(
                          "Drei einfache Schritte zu deinem neuen Job",
                        ),
                        const Text(
                          "Drei einfache Schritte zu deinem neuen Job",
                        )
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

class CustomClipPath extends CustomClipper<Path> {
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
