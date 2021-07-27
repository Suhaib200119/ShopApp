import 'package:flutter/material.dart';
import 'DB.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Quicksand',
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
  String products="clothing";

  Widget getCard(name,price,imageName,dec){
    return Card(
      shadowColor: Colors.white,
      elevation: 15,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        width: double.infinity,
        height: 200,
        child: Row(
          children: [
            Image.asset("assets/images/"+imageName,
              width: 200,height: 300,fit: BoxFit.cover,),
            SizedBox(width: 15,),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("$name",style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  Text("${dec.toString()}",style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                    overflow: TextOverflow.clip,
                  ),
                  Text("$price\$",style: TextStyle(
                    color: Colors.red,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),

                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("Shop App",style: TextStyle(fontSize: 24),),
      backgroundColor: Colors.orange,
      actions: [
        Padding(padding: EdgeInsets.only(right: 10),
        child: Icon(Icons.shopping_cart_sharp),),
      ],
    ),
      body: SafeArea(
        child: Container(
          color: Colors.amber.withOpacity(0.8),
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                  child: Column(
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(child: RaisedButton(
                            onPressed: () {
                              setState(() {
                                products="clothing";
                              });
                            },
                            child: Text("clothing",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            color: Colors.white,
                            textColor: Colors.orange,
                            elevation: 10,
                            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 0),
                          ),),
                          SizedBox(width: 10,),
                          Expanded(child: RaisedButton(
                            onPressed: () {
                              setState(() {
                                products="sweater";
                              });
                            },
                            child: Text("sweater",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            color: Colors.white,
                            textColor: Colors.orange,
                            elevation: 10,
                            padding: EdgeInsets.symmetric(vertical: 10,horizontal:0),
                          ),),
                          SizedBox(width: 10,),
                          Expanded(child: RaisedButton(
                            onPressed: () {
                              setState(() {
                                products="shoes";
                              });
                            },
                            child: Text("shoes",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            color: Colors.white,
                            textColor: Colors.orange,
                            elevation: 10,
                            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 0),
                          ),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text("$products products",style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                      ),),
                    ],
                  )
                ),

                if(products=="clothing")...clothingData.map((c){
                  return getCard(c.name.toString(), c.price, c.imageName.toString(),c.description.toString());
                }),
                if(products=="sweater")...sweaterData.map((s){
                  return getCard(s.name.toString(), s.price, s.imageName.toString(),s.description.toString());
                }),
                if(products=="shoes")...shoesData.map((sh){
                  return getCard(sh.name.toString(), sh.price, sh.imageName.toString(),sh.description.toString());
                }),
              ],
            ),
          ),
        ),
      )
    );
  }
}

