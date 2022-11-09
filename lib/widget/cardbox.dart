import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groupuiproject/nav/appointment.dart';
import 'package:groupuiproject/nav/doctorlist.dart';

class CardBox extends StatelessWidget {
  const CardBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.22,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Expanded(
              child: InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Appointment()));
            },
            child: Container(
              padding: EdgeInsets.only(left: 12, top: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xff0d1cbb).withOpacity(0.7)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    maxRadius: 30,
                    minRadius: 25,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.add,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Text(
                    "Clinic viset",
                    style: GoogleFonts.nunito(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Text(
                    "Make an appointment",
                    style: GoogleFonts.nunito(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white70),
                  )
                ],
              ),
            ),
          )),
          SizedBox(width: MediaQuery.of(context).size.width*0.01,),
          Expanded(
              child: InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomePageDimo()));
            },
            child: Container(
              padding: EdgeInsets.only(left: 12, top: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.black.withOpacity(0.3)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    maxRadius: 30,
                    minRadius: 25,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.home,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    height:MediaQuery.of(context).size.height * 0.01,
                  ),
                  Text(
                    "Home visit",
                    style: GoogleFonts.nunito(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Text(
                    "Make an appointment",
                    style: GoogleFonts.nunito(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white70),
                  )
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}
