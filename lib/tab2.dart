// вкладка для показа таблицы соревнований
import 'package:flutter/material.dart';
import 'domain/tablica.dart';

class Tab2 extends StatelessWidget {
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
      body: Padding(
          padding: EdgeInsets.all(8),
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: TablicaList(),
              ))),
    ));
  }
}

class TablicaList extends StatelessWidget {
  final tablica = <Tablica>[
    Tablica(
        podrazd: "1 караул ПЧ-1 Намцы",
        vid1: "3",
        vid2: "6",
        vid3: "6",
        vid4: "5",
        vid5: "8",
        vid6: "2",
        vid7: "9",
        vid8: "9",
        ochki: "46",
        mesto: "8"),
    Tablica(
        podrazd: "2 караул ПЧ-1 Намцы",
        vid1: "3",
        vid2: "6",
        vid3: "6",
        vid4: "5",
        vid5: "8",
        vid6: "2",
        vid7: "9",
        vid8: "9",
        ochki: "46",
        mesto: "8"),
    Tablica(
        podrazd: "3 караул ПЧ-1 Намцы",
        vid1: "3",
        vid2: "6",
        vid3: "6",
        vid4: "5",
        vid5: "8",
        vid6: "2",
        vid7: "9",
        vid8: "9",
        ochki: "46",
        mesto: "8"),
    Tablica(
        podrazd: "4 караул ПЧ-1 Намцы",
        vid1: "3",
        vid2: "6",
        vid3: "6",
        vid4: "5",
        vid5: "8",
        vid6: "2",
        vid7: "9",
        vid8: "9",
        ochki: "46",
        mesto: "8"),
    Tablica(
        podrazd: "МПЧ-2 Столбы",
        vid1: "3",
        vid2: "6",
        vid3: "6",
        vid4: "5",
        vid5: "8",
        vid6: "2",
        vid7: "9",
        vid8: "9",
        ochki: "46",
        mesto: "8"),
    Tablica(
        podrazd: "МПЧ-3 Крест-Кытыл",
        vid1: "3",
        vid2: "6",
        vid3: "6",
        vid4: "5",
        vid5: "8",
        vid6: "2",
        vid7: "9",
        vid8: "9",
        ochki: "46",
        mesto: "8"),
    Tablica(
        podrazd: "МПЧ-4 Кысыл-Сыр",
        vid1: "3",
        vid2: "6",
        vid3: "6",
        vid4: "5",
        vid5: "8",
        vid6: "2",
        vid7: "9",
        vid8: "9",
        ochki: "46",
        mesto: "8"),
    Tablica(
        podrazd: "МПЧ-5 Ымыяхтах",
        vid1: "3",
        vid2: "6",
        vid3: "6",
        vid4: "5",
        vid5: "8",
        vid6: "2",
        vid7: "9",
        vid8: "9",
        ochki: "46",
        mesto: "8"),
    Tablica(
        podrazd: "МПЧ-6 Тумул",
        vid1: "3",
        vid2: "6",
        vid3: "6",
        vid4: "5",
        vid5: "8",
        vid6: "2",
        vid7: "9",
        vid8: "9",
        ochki: "46",
        mesto: "8"),
  ];

  @override
  Widget build(BuildContext context) {
    return DataTable(
        headingRowColor: MaterialStateProperty.resolveWith(
            (states) => Color.fromRGBO(24, 26, 27, 1)),
        dataRowColor: MaterialStateProperty.resolveWith(
            (states) => Color.fromRGBO(24, 26, 27, 1)),
        columns: <DataColumn>[
          DataColumn(
            label: Text(
              'Подразделение',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(254, 182, 88, 1), fontSize: 16),
            ),
          ),
          DataColumn(
            label: Text(
              'Нас.тенс',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(254, 182, 88, 1), fontSize: 14),
            ),
          ),
          DataColumn(
            label: Text(
              'Одев.БОП',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(254, 182, 88, 1), fontSize: 14),
            ),
          ),
          DataColumn(
            label: Text(
              'Закр.СВ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(254, 182, 88, 1), fontSize: 14),
            ),
          ),
          DataColumn(
            label: Text(
              'Волейб',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(254, 182, 88, 1), fontSize: 14),
            ),
          ),
          DataColumn(
            label: Text(
              'Канат',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(254, 182, 88, 1), fontSize: 14),
            ),
          ),
          DataColumn(
            label: Text(
              'Эстафт',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(254, 182, 88, 1), fontSize: 14),
            ),
          ),
          DataColumn(
            label: Text(
              'ПроклМЛ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(254, 182, 88, 1), fontSize: 14),
            ),
          ),
          DataColumn(
            label: Text(
              'Боев.разв',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(254, 182, 88, 1), fontSize: 14),
            ),
          ),
          DataColumn(
            label: Text(
              'Очки',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(254, 182, 88, 1), fontSize: 14),
            ),
          ),
          DataColumn(
            label: Text(
              'Место',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(254, 182, 88, 1), fontSize: 14),
            ),
          ),
        ],
        rows: tablica
            .map((tablica) => DataRow(cells: [
                  DataCell(Text(tablica.podrazd,
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 16))),
                  DataCell(Text(tablica.vid1,
                      style: TextStyle(
                          color: Color.fromRGBO(190, 185, 179, 1),
                          fontSize: 18))),
                  DataCell(Text(tablica.vid2,
                      style: TextStyle(
                          color: Color.fromRGBO(190, 185, 179, 1),
                          fontSize: 18))),
                  DataCell(Text(tablica.vid3,
                      style: TextStyle(
                          color: Color.fromRGBO(190, 185, 179, 1),
                          fontSize: 18))),
                  DataCell(Text(tablica.vid4,
                      style: TextStyle(
                          color: Color.fromRGBO(190, 185, 179, 1),
                          fontSize: 18))),
                  DataCell(Text(tablica.vid5,
                      style: TextStyle(
                          color: Color.fromRGBO(190, 185, 179, 1),
                          fontSize: 18))),
                  DataCell(Text(tablica.vid6,
                      style: TextStyle(
                          color: Color.fromRGBO(190, 185, 179, 1),
                          fontSize: 18))),
                  DataCell(Text(tablica.vid7,
                      style: TextStyle(
                          color: Color.fromRGBO(190, 185, 179, 1),
                          fontSize: 18))),
                  DataCell(Text(tablica.vid8,
                      style: TextStyle(
                          color: Color.fromRGBO(190, 185, 179, 1),
                          fontSize: 18))),
                  DataCell(Text(tablica.ochki,
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 18))),
                  DataCell(Text(tablica.mesto,
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 18))),
                ]))
            .toList());
  }
}
