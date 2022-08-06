import 'package:flutter/material.dart';

import '../searchPage/search_company.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  // var size = MediaQuery.of(context).size;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return DefaultTabController
    (
      length: 2, 
      child: Column
      (
        children: 
        [
          Container
          (
            constraints: BoxConstraints.expand(height: 50),
            child: TabBar
            (
              tabs: 
              [
                Tab
                (
                  text: 'Companies',
                ),
                Tab
                (
                  text: 'Sponsored',
                )
              ],
              indicatorColor: Colors.pinkAccent,
              // indicatorPadding: EdgeInsets.all(30),
            ),
          ),
          Expanded
          (
            child: Container
            (
              child: TabBarView
              (
                children: 
                [
                  SearchCompanies(),
                  // Container
                  // (
                  //   child: Center(
                  //     child: Text
                  //     (
                  //       'Companies',
                  //       style: TextStyle
                  //       (
                  //         color: Colors.white
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Container
                  (
                    child: Center(
                      child: Text
                      (
                        'Sponsored',
                        style: TextStyle
                        (
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ]
              ),
            )
          )
        ],
      )
    );
  }
}