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
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: Container(
              width: 100,
              child: Image.asset('images/gps.png'),
            ),
            title: Text('Спартакиада Намского ОГПС'),
            bottom: TabBar(
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
            backgroundColor: Color.fromRGBO(255, 145, 3, 1),
          ),
          body: TabBarView(
            children: [Tab1(), Tab2(), Tab3()],
          ),
        ),
      ),
    );
  }
}
