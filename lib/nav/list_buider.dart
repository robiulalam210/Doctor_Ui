import 'package:flutter/material.dart';

import '../model/model_data.dart';

class ListBuilder extends StatelessWidget {
  ListBuilder({Key? key}) : super(key: key);
  var ListUserData = ModelData.doctorData();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
       // height: 220,
        //height: (220 * ListUserData.length).toDouble(),
        child: ListView.builder(
       //   physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: ListUserData.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.all(16),
              width: double.infinity,
              height: 190,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(16)),
              child: Column(children: [
                Expanded(
                    child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${ListUserData[index].doctorName}",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "${ListUserData[index].doctorType}",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black45),
                            )
                          ],
                        )),
                    Expanded(
                      flex: 1,
                      child: CircleAvatar(
                        backgroundColor: Color(0xffFFCCCD),
                        child: Image.asset("${ListUserData[index].doctorImage}",
                            scale: 10),
                        radius: 40,
                      ),
                    )
                  ],
                )),
                Divider(
                  thickness: 4,
                  endIndent: 8,
                  color: Colors.black54,
                ),
                Expanded(
                  // flex: 2,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildCalenderTime(Icons.calendar_month_rounded,
                              ListUserData[index].appointDate),
                          buildCalenderTime(Icons.access_time_filled_outlined,
                              ListUserData[index].appointTime),
                          // Spacer(),
                          SizedBox(
                            width: 8,
                          ),
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.green,
                          ),

                          Text(
                            "Confirmed",
                            style: TextStyle(fontSize: 14),
                          )
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 40,
                              width: 140,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                child: Text(
                                  "Cancel",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 40,
                              width: 140,
                              decoration: BoxDecoration(
                                  color: Color(0xff6B5DD5),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                child: Text(
                                  "Reschdule",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ]),
            );
          },
        ),
      ),
    );
  }

  Row buildCalenderTime(IconData iconName, String str) {
    return Row(
      children: [
        Icon(
          iconName,
          size: 18,
          color: Colors.black45,
        ),
        Text(
          "${str}",
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
        )
      ],
    );
  }
}
