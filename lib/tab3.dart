// вкладка для показа протоколов
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
        protocol: 'Закрепление спас.веревки за конструкцию',
        url: 'https://testrtp.ru/img/protokol003.jpg'),
    Protocol(
        protocol: 'Эстафета', url: 'https://testrtp.ru/img/protokol004.jpg'),
    Protocol(
        protocol: 'Волейбол', url: 'https://testrtp.ru/img/protokol004.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        //padding: EdgeInsets.all(8),
        child: GridView.builder(
      itemCount: protocols.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
      itemBuilder: (context, int i) {
        return Image.network(protocols[i].url);
      },
    ));
  }
}
