import 'package:flutter/material.dart';
import 'package:roboclub_flutter/models/contributor.dart';
import '../helper/dimensions.dart';

class ContriCard extends StatelessWidget {
  final Contributor _contributor;
  ContriCard(this._contributor);
  @override
  Widget build(BuildContext context) {
    var vpH = getViewportHeight(context);
    var vpW = getViewportWidth(context);
    TextStyle _titlestyle =
        TextStyle(fontWeight: FontWeight.bold, fontSize: vpH * 0.025);
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Container(
        height: vpH * 0.18,
        width: vpW * 0.90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              // color: Color(0xFF00000029),
              color: Colors.black26,
              blurRadius: 5.0,
              offset: Offset(0.0, 5),
              spreadRadius: 2.0,
            ),
          ],
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                      flex: 1,
                      child: CircleAvatar(
                        radius: vpH * 0.028,
                        backgroundColor: Colors.black,
                        child: CircleAvatar(
                          radius: vpH * 0.026,
                          backgroundImage:
                              AssetImage('assets/img/placeholder.jpg'),
                        ),
                      )),
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: vpW * 0.060, vertical: vpH * 0.005),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _contributor.name ?? "",
                            overflow: TextOverflow.ellipsis,
                            style: _titlestyle,
                          ),
                          Padding(
                              padding:
                                  EdgeInsets.symmetric(vertical: vpH * 0.006)),
                          Text(
                            _contributor.description ?? "",
                            // overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: vpH * 0.015),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "\u20B9 " + _contributor.amount ?? "",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: vpH * 0.018),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
