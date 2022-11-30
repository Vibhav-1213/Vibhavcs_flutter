import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        title: Text('Details',style: TextStyle(fontFamily: 'PatrickHand', fontSize: 50,),),
        centerTitle: true,
        backgroundColor: Colors.black45,
        bottom: PreferredSize(
        preferredSize: Size.fromHeight(30.0),
        child: SizedBox(),
      ),
      ),
      body: Stack(
          children: [
            Image.asset("assets/images/street_lampone.jpg"),
            Align(
                alignment: Alignment(-0.8,0.0),
                child: CircularPercentIndicator(radius: 160,
                          lineWidth: 17, percent: 0.32, animation: true, animationDuration: 1000,
                          center: new Text("32%",
                          style: TextStyle(fontFamily: 'PatrickHand', color: Colors.white, fontSize: 30)),
                          progressColor: Colors.indigo,)
            ),
            Align(
              alignment: Alignment(-1.2,0.8),
              child: Table(
                children: [
                  buildRow(['Date','Quantity','Progress']),
                  buildRow(['20/10/22','4.738','+22%']),
                  buildRow(['19/10/22','4.000','-2%']),
                  buildRow(['18/10/22','4.102','+6%']),
                ],
              ),
            )
          ],
        )


    );

  }
  TableRow buildRow(List<String> cells) => TableRow(
      children: cells.map((cell) {
        return Padding(
            padding: const EdgeInsets.all(12),
            child: Center(child: Text(cell, style: TextStyle(fontFamily: 'PatrickHand', color: Colors.white, fontSize: 17.5),)),);
      }
      ).toList()
  );
}

//Align(
//alignment: Alignment(0.85,-1.75),
//child: ClipRRect(
//borderRadius: BorderRadius.circular(20),
//child: Image.asset("assets/images/street_lampone.jpg", height: 170, width: 175,))),