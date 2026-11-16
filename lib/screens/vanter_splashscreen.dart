import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vanter/app_colors.dart';

class VanterSplashscreen extends StatelessWidget {
  const VanterSplashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: AlignmentGeometry.center,
                    child: Container(
                      padding: EdgeInsets.all(15),
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 195, 234, 152),
                            blurRadius: 100,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color.fromARGB(255, 227, 227, 227),
                        ),
                        child: Center(
                          child: SizedBox(
                            width: 60,
                            height: 60,
                            child: SvgPicture.asset(
                              "assets/talk-shoot.svg",
                              width: 20,
                              height: 20,
                              colorFilter: ColorFilter.mode(
                                AppColors.primary,
                                BlendMode.srcIn,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),
                  Text(
                    "Vanter",
                    style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Unclutter your mind. Vent & Banter.",
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(255, 129, 128, 128),
                    ),
                  ),
                  SizedBox(height: 12,),
                  Container(
                    width: 275,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color.fromARGB(255, 239, 244, 239),
                      border: BoxBorder.all(color: const Color.fromARGB(255, 208, 216, 199), width: 1)
                    ),
                    child: Text("•  Audio Brain Dumps  →  Mental clarity", style: GoogleFonts.plusJakartaSans(fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.primary),),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Text("QUIET FOCUS AWAITS...", style: GoogleFonts.plusJakartaSans(fontWeight: FontWeight.w600, fontSize: 16, color: const Color.fromARGB(255, 123, 123, 123)),),
                SizedBox(height: 5,),
               
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FilledButton(onPressed: (){}, child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("GET STARTED", style: GoogleFonts.plusJakartaSans(fontWeight: FontWeight.w700),)
                    ],
                  )),
                ),
                SizedBox(height: 40,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
