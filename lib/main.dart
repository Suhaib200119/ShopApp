import 'package:flutter/material.dart';
import 'package:my_shop_app/Sweater.dart';
import 'Clothing.dart';
import 'Shoes.dart';

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
  String dataShow="clothing";
  List<Clothing> clothingData=[
    Clothing("Pincourt",30,"r1.jpeg","simply dummy text of the printing and typesetting industry."),
    Clothing("cardigan",20,"r3.jpeg","simply dummy text of the printing and typesetting industry."),
    Clothing("Alskini",40,"r2.jpeg","galley of type and scrambled it to make a type specimen book."),
    Clothing("Plessee",50,"r5.jpeg","simply dummy text of the printing and typesetting industry."),
    Clothing("cardigan",20,"r3.jpeg","simply dummy text of the printing and typesetting industry."),
    Clothing("blazer",25,"r4.jpeg","galley of type and scrambled it to make a type specimen book."),
    Clothing("Alskini",40,"r2.jpeg","galley of type and scrambled it to make a type specimen book."),
    Clothing("Plessee",50,"r5.jpeg","simply dummy text of the printing and typesetting industry."),
    Clothing("blazer",25,"r4.jpeg","galley of type and scrambled it to make a type specimen book."),
    Clothing("Pincourt",30,"r1.jpeg","simply dummy text of the printing and typesetting industry."),

  ];
  List<Sweater> sweaterData=[
    Sweater("bolero",70,"g1.jpg","galley of type and scrambled it to make a type specimen book."),
    Sweater("nutria",90,"g5.jpg","galley of type and scrambled it to make a type specimen book."),
    Sweater("cardigan",80,"g2.jpg","simply dummy text of the printing and typesetting industry."),
    Sweater("jeans",40,"g4.jpg","simply dummy text of the printing and typesetting industry."),
    Sweater("blazer",65,"g3.jpg","galley of type and scrambled it to make a type specimen book."),
    Sweater("bolero",70,"g1.jpg","galley of type and scrambled it to make a type specimen book."),
    Sweater("jeans",40,"g4.jpg","simply dummy text of the printing and typesetting industry."),
    Sweater("cardigan",80,"g2.jpg","simply dummy text of the printing and typesetting industry."),
    Sweater("nutria",90,"g5.jpg","galley of type and scrambled it to make a type specimen book."),
    Sweater("blazer",65,"g3.jpg","galley of type and scrambled it to make a type specimen book."),

  ];
  List<Shoes> shoesData=[
    Shoes("Chanel",40,"s5.jpg","simply dummy text of the printing and typesetting industry."),
    Shoes("Salvatore",30,"s1.jpg","simply dummy text of the printing and typesetting industry."),
    Shoes("Bruno ",25,"s4.jpg","galley of type and scrambled it to make a type specimen book."),
    Shoes("Louboutin",35,"s2.jpg","simply dummy text of the printing and typesetting industry."),
    Shoes("Edmunds",20,"s3.jpg","galley of type and scrambled it to make a type specimen book."),
    Shoes("Louboutin",35,"s2.jpg","simply dummy text of the printing and typesetting industry."),
    Shoes("Edmunds",20,"s3.jpg","galley of type and scrambled it to make a type specimen book."),
    Shoes("Bruno ",25,"s4.jpg","galley of type and scrambled it to make a type specimen book."),
    Shoes("Chanel",40,"s5.jpg","simply dummy text of the printing and typesetting industry."),
    Shoes("Salvatore",30,"s1.jpg","simply dummy text of the printing and typesetting industry."),





  ];
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(child: RaisedButton(
                        onPressed: () {
                          setState(() {
                            dataShow="clothing";
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
                            dataShow="sweater";
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
                            dataShow="shoes";
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
                ),

                if(dataShow=="clothing")...clothingData.map((c){
                  return getCard(c.name.toString(), c.price, c.imageName.toString(),c.description.toString());
                }),
                if(dataShow=="sweater")...sweaterData.map((s){
                  return getCard(s.name.toString(), s.price, s.imageName.toString(),s.description.toString());
                }),
                if(dataShow=="shoes")...shoesData.map((sh){
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

