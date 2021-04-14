import 'package:flutter/material.dart';
import 'domain/kalendar.dart';

class Tab1 extends StatelessWidget {
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
        appBar: AppBar(
          title: Text('Календарь соревнований',
              style: TextStyle(color: Color.fromRGBO(254, 182, 88, 1))),
          backgroundColor: Color.fromRGBO(202, 114, 0, 1),
        ),
        body: KalendarList(),
      ),
    );
  }
}

class KalendarList extends StatelessWidget {
  final kalendar = <Kalendar>[
    Kalendar(
        data: '10-02-2018',
        vrema: '10:00',
        vid: 'Волейбол',
        mesto: 'с.Крест-Кытыл, СК \"Эрчим\"',
        komment:
            'Открытие ежегодной Спартакиады подразделений Намского улуса началось с соревнований по волейболу. Победила команда МПЧ-2 с.Столбы'),
    Kalendar(
        data: "22-03-2018",
        vrema: "11:00",
        vid: "Перетягивание каната",
        mesto: "с.Кысыл-Сыр, спортзал",
        komment: "Первое место опять за МПЧ-2. Поздравляем!"),
    Kalendar(
        data: "30-03-2018",
        vrema: "12:00",
        vid: "Перетягивание каната-2",
        mesto: "с.Кысыл-Сыр, спортзал",
        komment: "Первое место опять за МПЧ-2. Поздравляем!"),
    Kalendar(
        data: "02-04-2018",
        vrema: "13:00",
        vid: "Перетягивание каната-3",
        mesto: "с.Кысыл-Сыр, спортзал",
        komment: "Первое место опять за МПЧ-2. Поздравляем!"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
      itemCount: kalendar.length,
      itemBuilder: (context, i) {
        return Card(
            margin: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            color: Color.fromRGBO(24, 26, 27, 1),
            child: Container(
              child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  title: Text(
                      kalendar[i].data +
                          '  ' +
                          kalendar[i].vrema +
                          '  ' +
                          kalendar[i].vid,
                      style: TextStyle(
                          color: Color.fromRGBO(254, 182, 88, 1),
                          fontWeight: FontWeight.bold)),
                  trailing: Text(kalendar[i].mesto,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white)),
                  subtitle: Text(kalendar[i].komment,
                      style:
                          TextStyle(color: Color.fromRGBO(190, 185, 179, 1)))),
            ));
      },
    ));
    // TODO: implement build
    // throw UnimplementedError();
  }
}
