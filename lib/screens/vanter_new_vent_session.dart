import 'package:flutter/material.dart';
import 'package:vanter/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class VanterNewVentSession extends StatefulWidget {
  const VanterNewVentSession({super.key});

  @override
  State<VanterNewVentSession> createState() => _VanterNewVentSessionState();
}

class _VanterNewVentSessionState extends State<VanterNewVentSession> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Expanded(child: Column(
                children: [SizedBox(height: 20),
              Text(
                "Tap to vent your thoughts...",
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 27,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 12),
              Text(
                "Speak freely. We'll turn your ramble into structure.",
                style: GoogleFonts.plusJakartaSans(fontSize: 16),
              ),
              SizedBox(height: 50),
              AnimatedContainer(
                duration: Durations.extralong4,
                child: IconButton.filled(
                  onPressed: () {},
                  icon: Icon(Icons.mic),
                  iconSize: 88,
                  padding: EdgeInsets.all(20),
                ),
              ),
        ],
              )),
              
              Align(
                alignment: AlignmentGeometry.bottomCenter,
        
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5)],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Text(
                        "LIVE TRANSCRIPTION",
                        style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w700,
                          color: const Color.fromARGB(255, 107, 107, 107),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromARGB(255, 214, 214, 214),
                        ),
                        child: Text(
                          "Constructive Devil's Advocate: Header with AI persona status badge (Vanter AI • Ready to Banter) Socratic Dialogue Feed: Alternating user thought bubbles and st Constructive Devil's Advocate: Header with AI persona status badge (Vanter AI • Ready to Banter) Socratic Dialogue Feed: Alternating user thought bubbles and st",
                          style: GoogleFonts.plusJakartaSans(
                            color: Colors.black,
                            fontStyle: FontStyle.italic,
                            fontSize: 16
                          ),
                        ),
                      ),
                       SizedBox(height: 15,),
                      FilledButton(onPressed: (){}, child: Row(
                        mainAxisAlignment: .center,
                        children: [
                          Icon(Icons.auto_awesome),
                          SizedBox(width: 10,),
                          Text("Process with AI"),
                        ],
                      ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
