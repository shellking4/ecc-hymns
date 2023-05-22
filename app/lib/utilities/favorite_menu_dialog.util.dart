import 'package:flutter/material.dart';
import 'constants.util.dart';

class FavoriteMenuDialog extends StatefulWidget {
  const FavoriteMenuDialog({super.key});

  @override
  State<FavoriteMenuDialog> createState() => _FavoriteMenuDialogState();
}

class _FavoriteMenuDialogState extends State<FavoriteMenuDialog> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
            child: Container(
              width: 0,
              height: 43,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Que voulez-vous faire ?',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 10, fontFamily: "Inter", color: eccAccentDark),
                  ),
                ),
              ),
            ),
          ),
          Divider(
            height: 1,
            thickness: 0.7,
            indent: 30,
            endIndent: 30,
            color: eccAccentDark,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
            child: Container(
              width: 0,
              height: 52,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(0),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                child: TextButton(
                  onPressed: () {},
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Mettre en dessous',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12, fontFamily: "Inter", color: eccBlue),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Divider(
            height: 1,
            thickness: 0.7,
            indent: 30,
            endIndent: 30,
            color: eccAccentDark,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 5),
            child: Container(
              width: 0,
              height: 52,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(0),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Retirer des favoris',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12, fontFamily: "Inter", color: eccBlue),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 12),
            child: Container(
              width: 0,
              height: 52,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Fermer',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12, fontFamily: "Inter", color: eccBlue),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
