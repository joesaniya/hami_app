import 'package:flutter/material.dart';
import 'package:trading_demo/models/company.dart';

import '../theme/appcolor.dart';

class CompanyTile extends StatelessWidget {
  final Company data;
  const CompanyTile({required this.data});

  @override
  Widget build(BuildContext context) {
    // return Container
    // (
    //   width: MediaQuery.of(context).size.width,
    //   height: 30,
    //   color: Colors.red,
    // );
    return GestureDetector
    (
      onTap: ()
      {

      },
      child: Container
        (
          height: 40,
          width: double.infinity,
          color: Colors.transparent,
          child: Row
          (
            children: 
            [
              CircleAvatar
              (
                backgroundImage: NetworkImage(data.image),
              ),
              Text
              (
                data.title,
                style: TextStyle
                (
                  color: Colors.white
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container
              (
                height: 20,
                width: 40,
                decoration: BoxDecoration
                (
                  color: Appcolor.darkviolte1,
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Center
                (
                  child: Text
                  (
                    data.Subtitle,
                    style: TextStyle(color: Colors.white),
                  )
                ),
              ),
              Spacer(),
              Text
              (
                data.number,
                style: TextStyle
                (
                  color: Colors.white
                ),
              ),
              SizedBox
              (
                width: 30,
              ),
              Container(
                height: 30,
                width: 60,
                decoration: BoxDecoration
                (
                  color: Colors.pinkAccent,
                  borderRadius: BorderRadius.all(Radius.circular(5))
                ),
                child: Center(
                  child: Text
                  (
                    'View',
                    style: TextStyle
                    (
                      color: Colors.white
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}