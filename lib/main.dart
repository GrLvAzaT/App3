import 'package:flutter/material.dart';

import 'bottomnavi.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: HomePage(),
));


class  HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavi(),
      backgroundColor: Color.fromRGBO(202, 146, 243, 1),
      appBar: AppBar(  
        backgroundColor: Color.fromRGBO(10, 9, 40, 1),
        elevation: 0,
        leading: IconButton(  
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: (){},
        ),
      ),
      body: SafeArea(child: Column(children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(  
            color: Color.fromRGBO(10,9,40,1),
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(27))
          ),
          child: Column(children: [
            Text('Tesla',
            style: TextStyle(
              color: Color.fromRGBO(238, 195, 250, 1),
              fontSize: 53,
              fontFamily: 'Comfortaa',
              letterSpacing: 2.1666667461395264,
              fontWeight: FontWeight.normal
            ),),
            SizedBox(
              height: 2,
            ),
            Text('Выбери свою',
            style: TextStyle(
              color: Color.fromRGBO(238, 195, 250, 1),
              fontSize: 18,
              fontFamily: 'Comfortaa',
              letterSpacing: 3.1666667461395264,
              fontWeight: FontWeight.normal
            ),),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 347,
              height: 36,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(  
                color: Color.fromRGBO(158,158,158,0.55),
                borderRadius: BorderRadius.circular(7)
              ),
              child: TextField(  
                textAlign: TextAlign.left,
                decoration: InputDecoration(  
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search, color: Color.fromRGBO(11, 8, 31, 0.51),),
                  hintText: 'Поиск',
                  hintStyle: TextStyle(  
                    color: Color.fromRGBO(11, 8, 31, 0.51),
                    fontSize: 20,
                    fontFamily: 'Comfortaa',
                    letterSpacing: -0.3333333432674408,
                    fontWeight: FontWeight.normal,
                    height: 0.5
                  )
                ),
              ),
            ),
            SizedBox( height: 23,),
          ]),
        ),
        SizedBox(
          height: 3,
        ),
        Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(  
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 150,
                  child: promoCard1('assets/images/Model-X.jpg'),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 200,
                  child: ListView(  
                    scrollDirection: Axis.horizontal,
                    children: [
                      promoCard('assets/images/48d5587887e60ea1-main.jpg'),
                      promoCard('assets/images/437335-tesla-model-y-2020-tracer-la-voie-une-fois-de-plus.jpg'),
                      promoCard('assets/images/c48b5fec0b41c83f14e0f7dff2fb39ddfb28f62c.jpg'),
                      promoCard('assets/images/large_width.jpg'),
                      promoCard('assets/images/Model-X.jpg'),
                    ],
                  ),
                )
              ],
            )
          ],
        ),)
      ]),)
    );
  }

  promoCard(image){
    return AspectRatio(  
      aspectRatio: 4.82/3,
      
      child: Container(  
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(  
boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.9),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(1,2)
          )
        ],
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image)
        )
        ),
        
        child: Container(  
        decoration: BoxDecoration(  
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(begin: Alignment.bottomRight,stops: [
            0.2,
            0.9
          ], colors: [
            Colors.black.withOpacity(.8),
            Colors.black.withOpacity(.1)
          ])
        ),
      ),
      ),
      
    );
  }
}
  promoCard1(image){
    return Container(  
      height: 150,
      decoration: BoxDecoration(  
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.9),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(1,2)
          )
        ],
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image)
        )
      ),
      child: Container(  
        decoration: BoxDecoration(  
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(begin: Alignment.bottomRight,stops: [
            0.2,
            0.9
          ], colors: [
            Colors.black.withOpacity(.8),
            Colors.black.withOpacity(.1)
          ])
        ),
      ),
    );
  }


