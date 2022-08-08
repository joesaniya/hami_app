import 'package:flutter/material.dart';
import 'package:trading_demo/models/sponsored.dart';
import 'package:trading_demo/theme/appcolor.dart';

class SponsoredTab extends StatelessWidget {
  SponsoredTab({Key? key}) : super(key: key);

 List<Sponsored> sponsored = getSponsored();

  List<Widget> buildLastJobs1(){
    List<Widget> list = [];
    for (var i = sponsored.length - 1; i > -1; i--) {
      list.add(buildLastJob1(sponsored[i]));
    }
    return list;
  }

    Widget buildLastJob1(Sponsored sponsored){
    return Container(
      height: 100,
      color: Appcolor.background,
      child: Column(
        children: [
          Container
          (
            // width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height*0.20,
            // height: 200,
            // color: Colors.transparent,
            child: Card(
              // color: Co,
              color: Appcolor.background,
              child: Column(
                children: [
                  Row
                  (
                    children: 
                    [
                      CircleAvatar
                      (
                        backgroundImage: NetworkImage(sponsored.image),
                      ),
                      SizedBox
                      (
                        width: 10,
                      ),
                      Text
                      (
                        sponsored.heading,
                        style: TextStyle
                        (
                          color: Colors.white
                        ),
                      ),
                     
                      Spacer(),
                      Text
                      (
                        sponsored.trailing,
                        style: TextStyle
                        (
                          color: Colors.white
                        ),
                      ),
                    ],
                  ),
                  // SizedBox
                  // (
                  //   width: 60,
                  // ),
                  Container(
                    height: 20,
                    width: double.infinity,
                    color: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.only(left:50.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text
                                (
                                  sponsored.subheading,
                                  style: TextStyle
                                  (
                                    // color: Colors.white
                                    color: Colors.grey
                                  ),
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.only(left:20.0,right: 20),
        child: Column(
          children: [
            SizedBox
            (
              height: 50,
            ),
            ...buildLastJobs1()
            // Container
            // (
            //   width: MediaQuery.of(context).size.width,
            //   height: MediaQuery.of(context).size.height*0.20,
            //   child: Card
            //   (
            //     color: Appcolor.background,
            //     child: buildLastJob1(),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}