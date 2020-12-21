import 'package:flutter/material.dart';

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    List a = [
      "https://e.ad.amtv.pe/futbol-peruano-alianza-lima-jugador-que-asoma-como-refuerzo-ataque-n401540-808x454-908628.jpg",
      "https://prod.media.libero.pe/1200x660/libero/imagen/2020/09/27/noticia-1601245203-alianza-lima-camistea-morada.jpg",
      "https://pbs.twimg.com/media/DQ5XakdWsAIDoSR.jpg",
      "https://http2.mlstatic.com/D_NQ_NP_895328-MPE40284806355_122019-O.jpg",
    ];
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (BuildContext ctx, int index) {
          return Image.network(a[index]);
        },
        itemCount: a.length,
      ),
    );
  }
}
