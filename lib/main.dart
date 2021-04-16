import 'package:flutter/material.dart';
import 'tab1.dart';
import 'tab2.dart';
import 'tab3.dart';

void main() {
  runApp(Spartakiada());
}

class Spartakiada extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(dividerColor: Color.fromRGBO(190, 185, 179, 1)),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Color.fromRGBO(24, 26, 27, 1),
          appBar: AppBar(
            leading: Container(
              width: 50,
              child: Image.asset('images/gps.png'), //логотип ГПС
            ),
            title: Text('Спартакиада Намского ОГПС',
                style: TextStyle(color: Color.fromRGBO(254, 182, 88, 1))),
            bottom: TabBar(
              indicatorColor:
                  Color.fromRGBO(10, 81, 131, 1), //цвет линии вкладки
              tabs: [
                Tab(
                  text: 'Календарь',
                ),
                Tab(
                  text: 'Таблица',
                ),
                Tab(
                  text: 'Протоколы',
                ),
              ],
            ),
            backgroundColor: Color.fromRGBO(164, 93, 0, 1),
          ),
          body: TabBarView(
            children: [Tab1(), Tab2(), Tab3()],
          ),
        ),
      ),
    );
  }
}
