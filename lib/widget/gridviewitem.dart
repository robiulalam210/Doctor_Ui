import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groupuiproject/model.dart';
import 'package:groupuiproject/nav/appointment.dart';

class GridViewItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
          child: Container(
              margin: EdgeInsets.symmetric(horizontal: 6),
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 20,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    maxCrossAxisExtent: 300),
                itemBuilder: (context, index) => InkWell(
                  onTap: (){ Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Appointment()));},
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.black.withOpacity(0.3)),
                    padding: EdgeInsets.all(6),
                    height: MediaQuery.of(context).size.height * 0.16,
                    child: Column(
                      children: [
                        CircleAvatar(
                          maxRadius: 35,
                          backgroundColor: Colors.white70,
                        ),
                        SizedBox(
                          height:MediaQuery.of(context).size.height * 0.01,
                        ),
                        Text(
                          "Dr. Chris Frazier",
                          style: GoogleFonts.nunito(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height:MediaQuery.of(context).size.height * 0.01,
                        ),
                        Text(
                          "Pediatrician",
                          style: GoogleFonts.nunito(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                        Text("⭐ 6.5",style: GoogleFonts.nunito(fontSize: 20),)
                      ],
                    ),
                  ),
                ),
              ))),
    );
  }
}
