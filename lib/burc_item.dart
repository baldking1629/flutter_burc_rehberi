import 'package:flutter/material.dart';
import 'package:flutter_burc_rehberi/burc_detay.dart';
import 'package:flutter_burc_rehberi/model/burc.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc, super.key});

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/burcDetay',
                  arguments: listelenenBurc);
            },
            leading: Image.asset(
              "images/" + listelenenBurc.burcKucukResim,
            ),
            title: Text(
              listelenenBurc.burcAdi,
              style: myTextStyle.headline5,
            ),
            subtitle: Text(
              listelenenBurc.burcTarihi,
              style: myTextStyle.subtitle1,
            ),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.pink),
          ),
        ),
      ),
    );
  }
}
