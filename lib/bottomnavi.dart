import 'package:flutter/material.dart';

class  BottomNavi extends StatefulWidget {
  const BottomNavi({ Key? key }) : super(key: key);

  @override
  _BottomNaviState createState() => _BottomNaviState();
}

class _BottomNaviState extends State<BottomNavi> {
  int selectedIndex = 0;
  List<IconData> data = [
    Icons.car_repair,
    Icons.home,
    Icons.book,
    Icons.person_outline_sharp,
    Icons.search,
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(20),
        color: Color.fromRGBO(10,9,40,1),
        child: Container(  
          height: 70,
          width: double.infinity,
          child: ListView.builder(
            itemCount: data.length,
            padding: EdgeInsets.symmetric(horizontal: 10),
            itemBuilder: (ctx,i)=>Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
            child: GestureDetector(  
              onTap: (){
                setState(() {
                  selectedIndex=i;
                });
              },
              child: AnimatedContainer(  
                duration: Duration(milliseconds: 250),
                width: 35,
                decoration:BoxDecoration(
                border: i==selectedIndex
                ? Border(top: BorderSide(width: 3.0,color: Colors.black))
                : null,
              ),
              child: Icon(
                data[i],
                size: 35,
                color: i==selectedIndex
                ? Color.fromRGBO(126,103,186,1)
                : Color.fromRGBO(238,195,250,1),
              ),
            ),
            ),), scrollDirection: Axis.horizontal)
        ),
      ),
    );
  }
}