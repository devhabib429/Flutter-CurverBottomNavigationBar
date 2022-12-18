import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _pageIndex = 0;
  List lis =[
    const screen1(),
    const screen2(),
    const screen3(),
    const screen4(),
  ];
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BottomNavigationBar"),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),
        body: lis[_pageIndex],
        bottomNavigationBar: CurvedNavigationBar(
           key: _bottomNavigationKey,
          items: [
            Icon(Icons.add),
            Icon(Icons.notifications),
            Icon(Icons.abc_sharp),
            Icon(Icons.airport_shuttle)
          ],
          backgroundColor: Colors.purple,
          height: 70,
          animationDuration: Duration(milliseconds: 300),
          
          onTap: (value) {
            setState(() {
              _pageIndex = value;
            });
          },
        ));
  }
}


class screen1 extends StatefulWidget {
  const screen1({super.key});

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("Hello1",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.purple),),
      ),
    );
  }
}



class screen2 extends StatefulWidget {
  const screen2({super.key});

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("Hello2",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.purple),),
      ),
    );
  }
}



class screen3 extends StatefulWidget {
  const screen3({super.key});

  @override
  State<screen3> createState() => _screen3State();
}

class _screen3State extends State<screen3> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("Hello3",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.purple),),
      ),
    );
  }
}



class screen4 extends StatefulWidget {
  const screen4({super.key});

  @override
  State<screen4> createState() => _screen4State();
}

class _screen4State extends State<screen4> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("Hello4",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.purple),),
      ),
    );
  }
}
