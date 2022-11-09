import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groupuiproject/model.dart';

class SymotomsItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "What are you symptoms?",
            style:  GoogleFonts.nunito(fontSize: 24, fontWeight: FontWeight.w700,color: Colors.black),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

          Container(
            width: double.infinity,
            height:MediaQuery.of(context).size.height * 0.07,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.black.withOpacity(0.1),
                      ),
                      child: Text(
                        "${horizantel[index].item}",
                        style:  GoogleFonts.nunito(fontSize: 20, fontWeight: FontWeight.w700,color: Colors.black),
                      ),
                    ),
                separatorBuilder: (_, index) => SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03,
                    ),
                itemCount: horizantel.length),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

          Text(
            "Popular doctors",
            style:  GoogleFonts.nunito(fontSize: 24, fontWeight: FontWeight.w700,color: Colors.black),
          ),
        ],
      ),
    );
  }
}
