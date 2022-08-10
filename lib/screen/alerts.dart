import 'package:flutter/material.dart';
import 'package:trading_demo/theme/appcolor.dart';
import 'package:underline_indicator/underline_indicator.dart';

import '../searchPage/search_company.dart';
import '../searchPage/sponsored.dart';

class AlertPage extends StatefulWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  State<AlertPage> createState() => _AlertPageState();
}

class _AlertPageState extends State<AlertPage> {
  // var size = MediaQuery.of(context).size;
  bool _flag = true;

  // bool _flag1 = true;
  // bool _flag2 = true;
  // bool _flag3 = true;

  @override
  Widget build(BuildContext context) 
  {
    return SingleChildScrollView
    (
      child: Column
      (
        children: 
        [
          Padding(
                padding: const EdgeInsets.only(left:15.0,right: 15),
                child: Container(
                   width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.07,
                decoration: BoxDecoration(
                  color: Appcolor.darkviolte3,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              _flag = !_flag;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left:3.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.06,  
                               decoration: BoxDecoration(
                                  color: _flag ? Appcolor.background:Colors.transparent,
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                                  
                                ),
                              // height: 50,
                              // width: 150,
                              child: Center
                              (
                                child: Text('Newly Listed',
                                  style: TextStyle(
                                    fontFamily: 'PT Sans',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: _flag?Colors.white:Colors.pinkAccent,
                                  ),
                                )
                              ),
                            ),
                          ),
                        ),
                      ),

                      //2
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              _flag = !_flag;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left:3.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.06,  
                               decoration: BoxDecoration(
                                  color: _flag ? Appcolor.background:Colors.transparent,
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                                  
                                ),
                              // height: 50,
                              // width: 150,
                              child: Center
                              (
                                child: Text('Currently Listed',
                                  style: TextStyle(
                                    fontFamily: 'PT Sans',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: _flag?Colors.white:Colors.pinkAccent,
                                  ),
                                )
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              _flag = !_flag;
                            });
                            // buildLastJob(Pay[]);

                          },
                          child: Padding(
                            padding: const EdgeInsets.only(right:3.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.06,  
                               decoration: BoxDecoration(
                                  color: _flag ? Colors.transparent : Appcolor.background,
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                                  
                                ),
                              child: Center
                              (
                                child: Text
                                (
                                  'Sponsored',
                                  style: TextStyle(
                                    fontFamily: 'PT Sans',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: _flag?Colors.pinkAccent:Colors.white
                                  ),
                                )
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Expanded(child: Container())
                    ],
                  ),

                  // buildLastJobs()

                ),
              ),

              SingleChildScrollView
              (
                child: _flag ? SearchCompanies():SponsoredTab()
              )
        ],
      ),
    );
  }



  // @override
  // Widget build(BuildContext context) {
  //   var size = MediaQuery.of(context).size;
  //   return DefaultTabController
  //   (
  //     length: 2, 
  //     child: Column
  //     (
  //       children: 
  //       [
  //         Container
  //         (
  //           constraints: BoxConstraints.expand(height: 50),
  //           child: TabBar
  //           (
  //             indicator:UnderlineIndicator
  //             (
  //               strokeCap: StrokeCap.round,
  //               borderSide: BorderSide
  //               (
  //                 color: Colors.pink,
  //                 width: 4
  //               )
  //             ),
  //             tabs: 
  //             [
  //               Tab
  //               (
  //                 text: 'Companies',
  //               ),
  //               Tab
  //               (
  //                 text: 'Sponsored',
  //               )
  //             ],
  //             indicatorColor: Colors.pinkAccent,
  //             // indicatorPadding: EdgeInsets.all(30),
  //           ),
  //         ),
  //         Expanded
  //         (
  //           child: Container
  //           (
  //             child: TabBarView
  //             (
  //               children: 
  //               [
  //                 SearchCompanies(),
  //                 SponsoredTab()
  //                 // Container
  //                 // (
  //                 //   child: Center(
  //                 //     child: Text
  //                 //     (
  //                 //       'Companies',
  //                 //       style: TextStyle
  //                 //       (
  //                 //         color: Colors.white
  //                 //       ),
  //                 //     ),
  //                 //   ),
  //                 // ),
  //                 // Container
  //                 // (
  //                 //   child: Center(
  //                 //     child: Text
  //                 //     (
  //                 //       'Sponsored',
  //                 //       style: TextStyle
  //                 //       (
  //                 //         color: Colors.white
  //                 //       ),
  //                 //     ),
  //                 //   ),
  //                 // ),
  //               ]
  //             ),
  //           )
  //         )
  //       ],
  //     )
  //   );
  // }
}