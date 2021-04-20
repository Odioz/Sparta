// вкладка для показа протоколов
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sparta/domain/protocol.dart';

class Tab3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabMain();
  }
}

/// This is the stateless widget that the main application instantiates.
class TabMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(42, 45, 47, 1),
        body: ProtocolList(),
      ),
    );
  }
}

class ProtocolList extends StatelessWidget {
  final protocols = <Protocol>[
    Protocol(
        protocol: 'Одевание БОП',
        url: 'https://testrtp.ru/img/protokol004.jpg'),
    Protocol(
        protocol: 'Боевое развертывание',
        url: 'https://testrtp.ru/img/protokol1.jpg'),
    Protocol(
        protocol: 'Подъем по трехколенной лестнице',
        url: 'https://testrtp.ru/img/protokol004.jpg'),
    Protocol(
        protocol: 'Закрепление спасательной веревки за конструкцию',
        url: 'https://testrtp.ru/img/protokol003.jpg'),
    Protocol(
        protocol: 'Эстафета', url: 'https://testrtp.ru/img/protokol004.jpg'),
    Protocol(
        protocol: 'Волейбол', url: 'https://testrtp.ru/img/protokol004.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(8),
        child: GridView.builder(
          itemCount: protocols.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
          itemBuilder: (context, int i) {
            return GestureDetector(
              child: Card(
                color: Color.fromRGBO(24, 26, 27, 1),
                margin: EdgeInsets.all(10),
                child: getCard(i),
              ),
              onTap: () {
                //
              },
            );
          },
        ));
  }

  Column getCard(int i) {
    String messg = protocols[i].protocol;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Center(
          child: Container(
            child: new Stack(
              children: <Widget>[
                new Image.asset(
                  'images/protokol.jpg',
                  width: 200,
                  height: 160,
                )
              ],
            ),
          ),
        ),
        Text(
          messg,
          style:
              TextStyle(color: Color.fromRGBO(254, 182, 88, 1), fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
