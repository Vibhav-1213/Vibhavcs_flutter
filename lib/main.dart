// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'Details.dart';

void main() {
  runApp( MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScrollControllerWidget()));
}

class ScrollControllerWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ScrollControllerWidgetState();
  }
}

class ScrollControllerWidgetState extends State<ScrollControllerWidget>{
  String textHolder = ' Pending';
  void clickFunction() {
    setState((){
      textHolder=' Accepted';
    });
    //print('Function called');
  }
  void clickCapture() {
    setState((){
      textHolder=' Declined';
    });
    //print('Function called');
  }

  String textHolder1 = ' Pending';
  void clickFunction1() {
    setState((){
      textHolder1=' Accepted';
    });
    //print('Function called');
  }
  void clickCapture1() {
    setState((){
      textHolder1=' Declined';
    });
    //print('Function called');
  }

  String textHolder2 = ' Pending';
  void clickFunction2() {
    setState((){
      textHolder2=' Accepted';
    });
    //print('Function called');
  }
  void clickCapture2() {
    setState((){
      textHolder2=' Declined';
    });
    //print('Function called');
  }

  String textHolder3 = ' Pending';
  void clickFunction3() {
    setState((){
      textHolder3=' Accepted';
    });
    //print('Function called');
  }
  void clickCapture3() {
    setState((){
      textHolder3=' Declined';
    });
    //print('Function called');
  }

  String textHolder4 = ' Pending';
  void clickFunction4() {
    setState((){
      textHolder4=' Accepted';
    });
    //print('Function called');
  }
  void clickCapture4() {
    setState((){
      textHolder4=' Declined';
    });
    //print('Function called');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black45,
        appBar: AppBar(
          title: const Text('Orders',
            style: TextStyle(fontFamily: 'PatrickHand', fontSize: 50,),
          ),
          centerTitle: true,
          backgroundColor: Colors.black45,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(30.0),
            child: SizedBox(),
          ),
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(accountName: const Text('VIBHAV',
                style: TextStyle(fontFamily: 'PatrickHand', fontSize: 20),),
                  accountEmail: const Text('srivibhavcs1213@gmail.com',
                    style: TextStyle(fontFamily: 'PatrickHand', fontSize: 20),
                  ),),
              new ListTile(
                title: const Text("DETAILS",
                  style: TextStyle(fontFamily: 'PatrickHand',
                  fontSize: 30),
                ),
                trailing: new Icon(Icons.circle_sharp),
              ),
            ],
          ),
        ),

        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                      child: InkWell (
                        child: Column(
                          children: [
                            Container(
                              height: 200,
                              color: Colors.white24,
                              child: Center(
                                child: Stack(
                                  children: [
                                    Align(
                                        alignment: Alignment(0.85,-1.75),
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(20),
                                            child: Image.asset("assets/images/street_lampone.jpg", height: 170, width: 175,))),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Text('  Order #1',style: TextStyle(fontFamily: 'PatrickHand', color: Colors.blueAccent, fontSize: 35.0),)),
                                    Align(
                                      alignment: Alignment(0.3,0.8),
                                      child: IconButton(
                                        icon: Icon(Icons.check_rounded, size: 45, color: Colors.blueAccent,),
                                        onPressed: clickFunction
                                        ),
                                    ),
                                    Align(
                                        alignment: Alignment(-0.9,-0.4),
                                        child: Text(textHolder,style: TextStyle(fontFamily: 'PatrickHand',fontSize: 25, color: Colors.white),)),
                                    Align(
                                      alignment: Alignment(0.8,0.8),
                                      child: IconButton(
                                          icon: Icon(Icons.close_rounded, size: 45,color: Colors.red,),
                                          onPressed: clickCapture
                                      ),
                                    ),
                                    Align(
                                        alignment: Alignment(-0.9,-0.4),
                                        child: Text(textHolder,style: TextStyle(fontFamily: 'PatrickHand',fontSize: 25, color: Colors.white),))






                                  ],
                                ),
                              )
                            )
                          ],
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DetailsScreen())
                          );
                        },
                      ),
                    ),
                  ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: InkWell (
                  child: Column(
                    children: [
                      Container(
                          height: 200,
                          color: Colors.white24,
                          child: Center(
                            child: Stack(
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Text('  Order #1',style: TextStyle(fontFamily: 'PatrickHand', color: Colors.blueAccent, fontSize: 35.0),)),
                                Align(
                                  alignment: Alignment(0.3,0.8),
                                  child: IconButton(
                                      icon: Icon(Icons.check_rounded, size: 45, color: Colors.blueAccent,),
                                      onPressed: clickFunction1
                                  ),
                                ),
                                Align(
                                    alignment: Alignment(-0.9,-0.4),
                                    child: Text(textHolder1,style: TextStyle(fontFamily: 'PatrickHand',fontSize: 25, color: Colors.white),)),
                                Align(
                                  alignment: Alignment(0.8,0.8),
                                  child: IconButton(
                                      icon: Icon(Icons.close_rounded, size: 45,color: Colors.red,),
                                      onPressed: clickCapture1
                                  ),
                                ),
                                Align(
                                    alignment: Alignment(-0.9,-0.4),
                                    child: Text(textHolder1,style: TextStyle(fontFamily: 'PatrickHand',fontSize: 25, color: Colors.white),))






                              ],
                            ),
                          )
                      )
                    ],
                  ),
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailsScreen())
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: InkWell (
                  child: Column(
                    children: [
                      Container(
                          height: 200,
                          color: Colors.white24,
                          child: Center(
                            child: Stack(
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Text('  Order #1',style: TextStyle(fontFamily: 'PatrickHand', color: Colors.blueAccent, fontSize: 35.0),)),
                                Align(
                                  alignment: Alignment(0.3,0.8),
                                  child: IconButton(
                                      icon: Icon(Icons.check_rounded, size: 45, color: Colors.blueAccent,),
                                      onPressed: clickFunction2
                                  ),
                                ),
                                Align(
                                    alignment: Alignment(-0.9,-0.4),
                                    child: Text(textHolder2,style: TextStyle(fontFamily: 'PatrickHand',fontSize: 25, color: Colors.white),)),
                                Align(
                                  alignment: Alignment(0.8,0.8),
                                  child: IconButton(
                                      icon: Icon(Icons.close_rounded, size: 45,color: Colors.red,),
                                      onPressed: clickCapture2
                                  ),
                                ),
                                Align(
                                    alignment: Alignment(-0.9,-0.4),
                                    child: Text(textHolder2,style: TextStyle(fontFamily: 'PatrickHand',fontSize: 25, color: Colors.white),))






                              ],
                            ),
                          )
                      )
                    ],
                  ),
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailsScreen())
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: InkWell (
                  child: Column(
                    children: [
                      Container(
                          height: 200,
                          color: Colors.white24,
                          child: Center(
                            child: Stack(
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Text('  Order #1',style: TextStyle(fontFamily: 'PatrickHand', color: Colors.blueAccent, fontSize: 35.0),)),
                                Align(
                                  alignment: Alignment(0.3,0.8),
                                  child: IconButton(
                                      icon: Icon(Icons.check_rounded, size: 45, color: Colors.blueAccent,),
                                      onPressed: clickFunction3
                                  ),
                                ),
                                Align(
                                    alignment: Alignment(-0.9,-0.4),
                                    child: Text(textHolder3,style: TextStyle(fontFamily: 'PatrickHand',fontSize: 25, color: Colors.white),)),
                                Align(
                                  alignment: Alignment(0.8,0.8),
                                  child: IconButton(
                                      icon: Icon(Icons.close_rounded, size: 45,color: Colors.red,),
                                      onPressed: clickCapture3
                                  ),
                                ),
                                Align(
                                    alignment: Alignment(-0.9,-0.4),
                                    child: Text(textHolder3,style: TextStyle(fontFamily: 'PatrickHand',fontSize: 25, color: Colors.white),))






                              ],
                            ),
                          )
                      )
                    ],
                  ),
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailsScreen())
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: InkWell (
                  child: Column(
                    children: [
                      Container(
                          height: 200,
                          color: Colors.white24,
                          child: Center(
                            child: Stack(
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Text('  Order #1',style: TextStyle(fontFamily: 'PatrickHand', color: Colors.blueAccent, fontSize: 35.0),)),
                                Align(
                                  alignment: Alignment(0.3,0.8),
                                  child: IconButton(
                                      icon: Icon(Icons.check_rounded, size: 45, color: Colors.blueAccent,),
                                      onPressed: clickFunction4
                                  ),
                                ),
                                Align(
                                    alignment: Alignment(-0.9,-0.4),
                                    child: Text(textHolder4,style: TextStyle(fontFamily: 'PatrickHand',fontSize: 25, color: Colors.white),)),
                                Align(
                                  alignment: Alignment(0.8,0.8),
                                  child: IconButton(
                                      icon: Icon(Icons.close_rounded, size: 45,color: Colors.red,),
                                      onPressed: clickCapture4
                                  ),
                                ),
                                Align(
                                    alignment: Alignment(-0.9,-0.4),
                                    child: Text(textHolder4,style: TextStyle(fontFamily: 'PatrickHand',fontSize: 25, color: Colors.white),))






                              ],
                            ),
                          )
                      )
                    ],
                  ),
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailsScreen())
                    );
                  },
                ),
              ),
            ),


          ],
        ),
    );
  }
}






















