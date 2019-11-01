import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(234, 240, 241, 1.0),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(234, 240, 241, 1.0),
        elevation: 0.0,
        leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.black,), onPressed: () {},),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.shopping_cart, color: Colors.black,), onPressed: (){},)
        ],
      ),
      body: Column(
        children: <Widget>[
          new Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 127.0),
              child: Text('Cart Value', style: TextStyle(fontSize: 28, fontFamily: 'Segoe', fontWeight: FontWeight.bold),),
            ),
          ),
          new Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text('\$49.99', style: TextStyle(fontSize: 24, fontFamily: 'Segoe'),),
            ),
          ),
          new Container(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 104.0, left: 28),
              child: Text('Make Payment :', style: TextStyle(fontSize: 18, fontFamily: 'Segoe'),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Screen1()));
              },
              child: new Container(
                width: size.width - 45,
                height: 44,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.32),
                  border: Border.all(width: 1, color: Colors.white)
                ),
                child: Row(
                  children: <Widget>[
                    new Container(child: Padding(
                      padding: const EdgeInsets.only(left: 3.0),
                      child: Image.asset('images/credit-card.png', width: 34, height: 34,),
                    )),
                    new Container(child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text('Credit / Debit Card', style: TextStyle(fontFamily: 'Segoe', fontSize: 16),),
                    ),)
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: new Container(
              width: size.width - 45,
              height: 44,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.32),
                  border: Border.all(width: 1, color: Colors.white)
              ),
              child: Row(
                children: <Widget>[
                  new Container(child: Padding(
                    padding: const EdgeInsets.only(left: 3.0),
                    child: Image.asset('images/gpay.png', width: 34, height: 34,),
                  )),
                  new Container(child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text('Google Pay', style: TextStyle(fontFamily: 'Segoe', fontSize: 16),),
                  ),)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: new Container(
              width: size.width - 45,
              height: 44,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.32),
                  border: Border.all(width: 1, color: Colors.white)
              ),
              child: Row(
                children: <Widget>[
                  new Container(child: Padding(
                    padding: const EdgeInsets.only(left: 3.0),
                    child: Image.asset('images/upi.png', width: 34, height: 34,),
                  )),
                  new Container(child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text('UPI', style: TextStyle(fontFamily: 'Segoe', fontSize: 16),),
                  ),)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: new Container(
              width: size.width - 45,
              height: 44,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.32),
                  border: Border.all(width: 1, color: Colors.white)
              ),
              child: Row(
                children: <Widget>[
                  new Container(child: Padding(
                    padding: const EdgeInsets.only(left: 3.0),
                    child: Image.asset('images/money.png', width: 34, height: 34,),
                  )),
                  new Container(child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text('Cash on Delivery', style: TextStyle(fontFamily: 'Segoe', fontSize: 16),),
                  ),)
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}

class Screen1 extends StatefulWidget{
  @override
  _Screen1 createState() => _Screen1();
}

class _Screen1 extends State <Screen1>{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Color.fromRGBO(234, 240, 241, 1.0),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(234, 240, 241, 1.0),
        elevation: 0.0,
        leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.black,), onPressed: () {
          Navigator.pop(context);
        },),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 186.0),
              child: new Container(
                width: size.width - 28,
                height: 212,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(57, 55, 55, 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: new Image.asset('images/visa.png'),
                        ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Text('Card Number', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: Color.fromRGBO(132, 127, 127, 1.0)),),
                      ),
                    ),
                    Container(
                      width: size.width - 140,
                      alignment: Alignment.topLeft,
                      child: TextField(
                        obscureText: true,
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Color.fromRGBO(132, 127, 127, 1.0), fontSize: 19, fontFamily: 'Segoe',),
                        decoration: InputDecoration(
                          hintText: 'XXXX XXXX XXXX XXXX',
                          hintStyle: TextStyle(color: Color.fromRGBO(132, 127, 127, 1.0), fontSize: 19, fontFamily: 'Segoe',),

                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24.0),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: Text('Card Holder Name', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: Color.fromRGBO(132, 127, 127, 1.0)) ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 50.0),
                              child: Text('Exp Date',  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: Color.fromRGBO(132, 127, 127, 1.0))),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
//                          color: Colors.red,
                          width: 180,
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: TextField(
                              style: TextStyle(color: Color.fromRGBO(132, 127, 127, 1.0), fontSize: 19, fontFamily: 'Segoe',),
                              decoration: InputDecoration(
                                hintText: 'John Doe',
                                hintStyle: TextStyle(color: Color.fromRGBO(132, 127, 127, 1.0), fontSize: 19, fontFamily: 'Segoe',),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        new Expanded(child: Container()),
                        Container(
//                          color: Colors.green,
                          width: 100,
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(),
                            child: TextField(

                              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: Color.fromRGBO(132, 127, 127, 1.0)),
                              decoration: InputDecoration(
                                hintText: 'XX/XX',
                                hintStyle: TextStyle(color: Color.fromRGBO(132, 127, 127, 1.0), fontSize: 19, fontFamily: 'Segoe',),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 160.0),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Screen2()));
              },
              child: new Container(
                width: 160,
                height: 40,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(52, 152, 219, 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(8))
                ),
                child: Stack(
                  children: <Widget>[

                    Center(child: new Text('Next', style: TextStyle(fontFamily: 'Segoe', fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),)),
                    Container(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: new IconButton(icon: Icon(Icons.last_page,color: Colors.white,), onPressed: (){},),
                        )
                    ),

                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: new Container(
                width: 160,
                height: 40,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(46, 204, 144, 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(8))
                ),
                child: Stack(
                  children: <Widget>[

                    Center(child: new Text('Previous', style: TextStyle(fontFamily: 'Segoe', fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),)),
                    Container(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: new IconButton(icon: Icon(Icons.first_page,color: Colors.white,), onPressed: () {Navigator.pop(context);},)
                        )
                    ),

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Screen2 extends StatefulWidget{
  @override
  _Screen2 createState() => _Screen2();
}

class _Screen2 extends State <Screen2>{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Color.fromRGBO(234, 240, 241, 1.0),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(234, 240, 241, 1.0),
        elevation: 0.0,
        leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.black,), onPressed: () {
          Navigator.pop(context);
        },),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 186.0),
              child: new Container(
                width: size.width - 28,
                height: 212,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(57, 55, 55, 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: new Container(
                        width: double.infinity,
                        height: 40,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 14.0),
                      child: new Container(
                        width: size.width-60,
                        height: 30,
                        color: Colors.white,
                        child: Row(
                          children: <Widget>[
                            Container(
//                          color: Colors.red,
                              width: 180,
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 30.0),
//                                child: TextField(
//                                  style: TextStyle(color: Color.fromRGBO(132, 127, 127, 1.0), fontSize: 19, fontFamily: 'Segoe',),
//                                  decoration: InputDecoration(
//                                    hintText: 'John Doe',
//                                    hintStyle: TextStyle(color: Color.fromRGBO(132, 127, 127, 1.0), fontSize: 19, fontFamily: 'Segoe',),
//                                    border: InputBorder.none,
//                                  ),
//                                ),
                              ),
                            ),
                            new Expanded(child: Container()),
                            Container(
//                          color: Colors.green,
                              width: 100,
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 1.0),
                                child: TextField(
                                  obscureText: true,
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 19, color: Color.fromRGBO(132, 127, 127, 1.0)),
                                  decoration: InputDecoration(
                                    hintText: 'XXX',
                                    hintStyle: TextStyle(color: Color.fromRGBO(132, 127, 127, 1.0), fontSize: 19, fontFamily: 'Segoe',),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: Text('', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: Color.fromRGBO(132, 127, 127, 1.0)) ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 80.0, top: 10.0),
                            child: Text('CVV',  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: Color.fromRGBO(132, 127, 127, 1.0))),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 160.0),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Screen3()));
              },
              child: new Container(
                width: 160,
                height: 40,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(52, 152, 219, 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(8))
                ),
                child: Stack(
                  children: <Widget>[

                    Center(child: new Text('Next', style: TextStyle(fontFamily: 'Segoe', fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),)),
                    Container(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: new IconButton(icon: Icon(Icons.last_page,color: Colors.white,), onPressed: (){},),
                        )
                    ),

                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: new Container(
                width: 160,
                height: 40,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(46, 204, 144, 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(8))
                ),
                child: Stack(
                  children: <Widget>[

                    Center(child: new Text('Previous', style: TextStyle(fontFamily: 'Segoe', fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),)),
                    Container(
                        alignment: Alignment.centerRight,
                        child: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: new IconButton(icon: Icon(Icons.first_page,color: Colors.white,), onPressed: () {Navigator.pop(context);},)
                        )
                    ),
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}

class Screen3 extends StatefulWidget{
  @override
  _Screen3 createState()=> _Screen3();
}

class _Screen3 extends State <Screen3>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Color.fromRGBO(234, 240, 241, 1.0),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(234, 240, 241, 1.0),
        elevation: 0.0,

      ),
      body: Column(
        children: <Widget>[
          Center(child: Padding(
            padding: const EdgeInsets.only(top: 240.0),
            child: Image.asset('images/checked.png', width: 108, height: 108,),
          )),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Text('Card Added Successfully!', style: TextStyle(fontFamily: 'Segoe', fontWeight: FontWeight.bold, fontSize: 22),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 160.0),
            child: Container(
              width: 200,
              height: 60,
              decoration: BoxDecoration(
                color: Color.fromRGBO(52, 152, 219, 1.0),
                borderRadius: BorderRadius.all(Radius.circular(8.0))
              ),
              child: Center(child: Text('Make Payment', style: TextStyle(fontSize: 18, fontFamily: 'Segoe', fontWeight: FontWeight.bold, color: Colors.white),)),
            ),
          )
        ],
      )
    );
  }

}
