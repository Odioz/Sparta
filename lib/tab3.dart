// вкладка для показа протоколов
import 'package:photo_view/photo_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:sparta/domain/protocol.dart';
import 'package:cached_network_image/cached_network_image.dart';

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
        url: 'https://doska.ykt2.ru/files/2021-04-21/kOXVx1Pk.jpeg'),
    Protocol(
        protocol: 'Боевое развертывание',
        url: 'https://testrtp.ru/img/protokol001.jpg'),
    Protocol(
        protocol: 'Подъем по трехколенной лестнице',
        url: 'https://testrtp.ru/img/protokol004.jpg'),
    Protocol(
        protocol: 'Закрепление спасательной веревки за конструкцию',
        url: 'http://testrtp.ru/img/mesto2.jpeg'),
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
              crossAxisCount: 2, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
          itemBuilder: (context, int i) {
            return GestureDetector(
              child: Card(
                color: Color.fromRGBO(24, 26, 27, 1),
                margin: EdgeInsets.all(2),
                child: getCard(i),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return PokazProtokol(url: protocols[i].url);
                }));
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
                  width: 10.0.w,
                  height: 8.0.h,
                )
              ],
            ),
          ),
        ),
        Text(
          messg,
          style: TextStyle(
              color: Color.fromRGBO(254, 182, 88, 1), fontSize: 12.0.sp),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class PokazProtokol extends StatefulWidget {
  final String url;

  PokazProtokol({Key key, @required this.url})
      : assert(url != null),
        super(key: key);
  @override
  _PokazProtokolState createState() => _PokazProtokolState();
}

class _PokazProtokolState extends State<PokazProtokol> {
  ImageProvider _imageProvider;

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();

    _imageProvider = NetworkImage(widget.url);
    //  CachedNetworkImage(imageUrl: widget.url) as ImageProvider<Object>;
  }

  @override
  void dispose() {
    //SystemChrome.restoreSystemUIOverlays();
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(child: PhotoView(imageProvider: _imageProvider)),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
