import 'package:flutter/material.dart';
import 'package:groupuiproject/widget/cardbox.dart';
import 'package:groupuiproject/widget/gridviewitem.dart';
import 'package:groupuiproject/widget/myappbar.dart';
import 'package:groupuiproject/widget/symptomsitem.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyAppBar(),
              CardBox(),
              SymotomsItem(),

                GridViewItem(),

            ],
          ),
        ),
      ),
    );
  }
}
