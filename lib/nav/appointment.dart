import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Appointment extends StatelessWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Color(0xff0d1cbb).withOpacity(0.8),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.more_vert_outlined,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                CircleAvatar(
                  maxRadius: 35,
                  backgroundImage: AssetImage("images/1.png"),

                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Text(
                  "Dr. Viola Dunn",
                  style: GoogleFonts.nunito(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Text(
                  "Therapist",
                  style: GoogleFonts.nunito(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white70),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,

                      child: Icon(Icons.call),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.04,
                    ),
                    CircleAvatar(
                      maxRadius: 25,
                      child: Icon(Icons.video_camera_back),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 14,vertical: 8),
                 // padding: MediaQuery.of(context).padding*0.9,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16))),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About doctor",
                        style: GoogleFonts.nunito(
                            fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black),
                      ),
                      Text(
                        "Take a look at a great medical app concept we’ve made recently Home Page is fa home visit.",
                        style: GoogleFonts.nunito(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Reviews   ⭐ 4.9  (124)",
                            style: GoogleFonts.nunito(
                                fontSize: 22, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "See all",
                            style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Colors.blue),
                          )
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Container(
                        padding: MediaQuery.of(context).padding*0.1,
                        height: MediaQuery.of(context).size.height*0.2,
                        width: double.infinity,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  width: 340,
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(14),
                                      color: Colors.black.withOpacity(0.4)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [

                                      Row(
                                        children: [

                                          CircleAvatar(
                                            maxRadius: 25,
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.01,
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                "Robiul Alam",
                                                style: GoogleFonts.nunito(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 20),
                                              ),
                                              Text(
                                                "Robiul Alam",
                                                style: GoogleFonts.nunito(
                                                    fontSize: 20),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.1,
                                          ),
                                          Text(
                                            "⭐ 5.0",
                                            style: GoogleFonts.nunito(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      Container(
                                        child: Text(
                                          "Take a look at a great medical app concept we’ve made recently Home Page is for you to choose whether you’d like to go to the hospital or book a home visit.",
                                          style: GoogleFonts.nunito(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                          ),
                                          maxLines: 2,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                            separatorBuilder: (_, index) => SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.04,
                                ),
                            itemCount: 6),
                      ),
                      Text(
                        "Location",
                        style: GoogleFonts.nunito(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            child: Icon(Icons.location_on_outlined),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.1,
                          ),
                          Column(
                            children: [
                              Text(
                                "BDBL Office",
                                style: GoogleFonts.nunito(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Location",
                                style: GoogleFonts.nunito(
                                    fontSize: 18, fontWeight: FontWeight.w700),
                              ),
                            ],
                          )
                        ],
                      ),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Consultation price",
                                  style: GoogleFonts.nunito(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "53",
                                  style: GoogleFonts.nunito(
                                      fontSize: 18, color: Colors.black,fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Container(
                              color: Colors.grey,
                              alignment: Alignment.center,
                              height:
                                  MediaQuery.of(context).size.height * 0.05,
                              width: MediaQuery.of(context).size.width,
                              padding: MediaQuery.of(context).padding * 0.2,
                              child: Center(
                                  child: Text(
                                "Book Appointment",
                                style: TextStyle(fontSize: 20,color: Colors.white),
                              )),
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
