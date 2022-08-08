import 'package:flutter/material.dart';
import 'package:trading_demo/models/alertnetwork.dart';

import '../theme/appcolor.dart';
class NetworkDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildChild(context),
    );
  }

  _buildChild(BuildContext context) => Container(
    // height: 430,
    // height: 500,
    height: MediaQuery.of(context).size.height*0.570,
    decoration: BoxDecoration(
      // color: Colors.white,
      color: Appcolor.background,
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.all(Radius.circular(12))
    ),
    child: Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container
              (
                height: 20,
                color: Colors.transparent,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text
                  (
                    'Choose Network',
                    style: TextStyle
                    (
                      color: Colors.white
                    ),
                    textAlign: TextAlign.left,
                  ),
                )
              ),

              Divider
                (
                  thickness: 1,
                  color: Colors.white24,
                  // color: Colors.black12,
                ),
                SizedBox
                (
                  height: 10,
                ),
              Container
              (
                // height: 150,
                height: MediaQuery.of(context).size.height*0.20,
                width: double.infinity,
                decoration: BoxDecoration
                (
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Colors.transparent
                ),
                child: GridView.builder
                (
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(  
                  crossAxisCount: 2,  
                  crossAxisSpacing: 10.0,  
                  mainAxisSpacing: 4.0  
                  ),
                  itemCount: network.length,
                  itemBuilder:(context,index)
                  {
                    return Container
                    (
                      // child: Image.network(network[index].image)
                      
                        height: MediaQuery.of(context).size.height*0.20,
                        // width: double.infinity,
                        decoration: BoxDecoration
                        (
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: Colors.grey.shade300
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image
                            (
                              height: 50,
                              image: NetworkImage
                              (network[index].image)),
                            SizedBox
                            (
                              height: 10,
                            ),
                            Text(network[index].title),
                            SizedBox
                            (
                              height: 10,
                            ),
                            Text(network[index].subtitle),
                          ],
                        ),
                    );
                  }
                ),

                //normal
                // child: Row
                // (
                //   children: 
                //   [
                //     Expanded(
                //       child: Container
                //       (
                //         height: MediaQuery.of(context).size.height*0.20,
                //         // width: double.infinity,
                //         decoration: BoxDecoration
                //         (
                //           borderRadius: BorderRadius.all(Radius.circular(10)),
                //           color: Colors.grey.shade300
                //         ),
                //         child: Column(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           crossAxisAlignment: CrossAxisAlignment.center,
                //           children: [
                //             Image
                //             (
                //               height: 50,
                //               image: NetworkImage
                //               ('https://app.hami.live/static/media/bnb.36582179573789d51ad3.png')),
                //             Text('Binance Smart Chain'),
                //           ],
                //         ),
                //       ),
                //     ),
                //     SizedBox
                //     (
                //       width: 10,
                //     ),
                //     Expanded(
                //       child: Container
                //       (
                //         height: MediaQuery.of(context).size.height*0.20,
                        
                //         decoration: BoxDecoration
                //         (
                //           borderRadius: BorderRadius.all(Radius.circular(10)),
                //           color: Colors.grey.shade300
                //         ),
                //         child: Column(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           crossAxisAlignment: CrossAxisAlignment.center,
                //           children: [
                //             Image
                //             (
                //               height: 50,
                //               image: NetworkImage
                //               ('https://app.hami.live/static/media/bnb.36582179573789d51ad3.png')),
                //             Text('Ethereum'),
                //             Text('Coming Soon'),
                //           ],
                //         ),
                //       ),
                //     )
                //   ],
                // ),
                
              ),

              //

              SizedBox
              (
                height: 20,
              ),

              Container
              (
                height: 20,
                color: Colors.transparent,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text
                  (
                    'BSC TESTNET',
                    style: TextStyle
                    (
                      color: Colors.white
                    ),
                    textAlign: TextAlign.left,
                  ),
                )
              ),

              SizedBox
              (
                height: 10,
              ),

              Container
              (
                // height: 150,
                height: MediaQuery.of(context).size.height*0.20,
                width: double.infinity,
                decoration: BoxDecoration
                (
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent
                ),
                child: GridView.builder
                (
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(  
                  crossAxisCount: 2,  
                  crossAxisSpacing: 10.0,  
                  mainAxisSpacing: 4.0  
                  ),
                  itemCount: test.length,
                  itemBuilder:(context,index)
                  {
                    return Container
                    (
                      // child: Image.network(network[index].image)
                      
                        height: MediaQuery.of(context).size.height*0.20,
                        // width: double.infinity,
                        decoration: BoxDecoration
                        (
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: Colors.grey.shade300
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image
                            (
                              height: 50,
                              image: NetworkImage
                              (test[index].image)),
                            SizedBox
                            (
                              height: 10,
                            ),
                            Text(test[index].title),
                            SizedBox
                            (
                              height: 10,
                            ),
                            Text(test[index].subtitle),
                          ],
                        ),
                    );
                  }
                ),

                // child: Row
                // (
                //   children: 
                //   [
                //     Expanded(
                //       child: Container
                //       (
                //         height: MediaQuery.of(context).size.height*0.20,
                //         // width: double.infinity,
                //         decoration: BoxDecoration
                //         (
                //           borderRadius: BorderRadius.all(Radius.circular(10)),
                //           color: Colors.grey.shade300
                //         ),
                //         child: Column(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           crossAxisAlignment: CrossAxisAlignment.center,
                //           children: [
                //             Image
                //             (
                //               height: 50,
                //               image: NetworkImage
                //               (
                //               'https://app.hami.live/static/media/bnb.36582179573789d51ad3.png')),
                //             Text('Binance Smart Chain'),
                //           ],
                //         ),
                //       ),
                //     ),
                //     Expanded
                //     (
                //       child: Container()
                //     )
                    
                //   ],
                // ),
                
              ),

            ],
          ),
        ),


        SizedBox
        (
          height: 10,
        )
       
      ],
    ),
  );
}