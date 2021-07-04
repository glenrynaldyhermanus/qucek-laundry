import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderDetailPageWidget extends StatefulWidget {
  OrderDetailPageWidget({Key key}) : super(key: key);

  @override
  _OrderDetailPageWidgetState createState() => _OrderDetailPageWidgetState();
}

class _OrderDetailPageWidgetState extends State<OrderDetailPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.tertiaryColor,
        iconTheme: IconThemeData(color: FlutterFlowTheme.primaryColor),
        automaticallyImplyLeading: true,
        title: Text(
          'Order Detail',
          style: FlutterFlowTheme.title3.override(
            fontFamily: 'Comfortaa',
            color: Color(0xFF292929),
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(24, 24, 24, 24),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Order No',
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Comfortaa',
                                  color: Color(0xFF292929),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                                child: Text(
                                  'K-123456',
                                  style: FlutterFlowTheme.subtitle1.override(
                                    fontFamily: 'Comfortaa',
                                    color: Color(0xFF292929),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Text(
                            'New Order',
                            style: FlutterFlowTheme.subtitle1.override(
                              fontFamily: 'Comfortaa',
                              color: FlutterFlowTheme.primaryColor,
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      color: Color(0xFFC1C1C1),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                      child: Text(
                        'Service Detail',
                        style: FlutterFlowTheme.subtitle1.override(
                          fontFamily: 'Comfortaa',
                          color: Color(0xFF292929),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(8, 16, 8, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Cuci + Lipat x 3kg',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Comfortaa',
                              color: Color(0xFF292929),
                            ),
                          ),
                          Text(
                            'Rp 24.000',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Comfortaa',
                              color: Color(0xFF292929),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Delivery fee',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Comfortaa',
                              color: Color(0xFF292929),
                            ),
                          ),
                          Text(
                            'Gratis',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Comfortaa',
                              color: Color(0xFF292929),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(8, 8, 8, 4),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Service fee',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Comfortaa',
                              color: Color(0xFF292929),
                            ),
                          ),
                          Text(
                            'Gratis',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Comfortaa',
                              color: Color(0xFF292929),
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      color: Color(0xFFC1C1C1),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(8, 4, 8, 32),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Comfortaa',
                              color: Color(0xFF292929),
                            ),
                          ),
                          Text(
                            'Rp 24.000',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Comfortaa',
                              color: Color(0xFF292929),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                      child: Text(
                        'Customer',
                        style: FlutterFlowTheme.subtitle1.override(
                          fontFamily: 'Comfortaa',
                          color: Color(0xFF292929),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(8, 16, 8, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Glen Rynaldi Hermanus',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Comfortaa',
                              color: Color(0xFF292929),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '+6289637978871',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Comfortaa',
                              color: Color(0xFF292929),
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Call',
                            icon: Icon(
                              Icons.call_rounded,
                              size: 16,
                            ),
                            options: FFButtonOptions(
                              width: 120,
                              height: 32,
                              color: FlutterFlowTheme.primaryColor,
                              textStyle: FlutterFlowTheme.bodyText2.override(
                                fontFamily: 'Comfortaa',
                              ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: 24,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(8, 8, 8, 32),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Jalan Rawasari Timur 1 ',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Comfortaa',
                              color: Color(0xFF292929),
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Navigate',
                            icon: Icon(
                              Icons.navigation_rounded,
                              size: 16,
                            ),
                            options: FFButtonOptions(
                              width: 120,
                              height: 32,
                              color: FlutterFlowTheme.primaryColor,
                              textStyle: FlutterFlowTheme.bodyText2.override(
                                fontFamily: 'Comfortaa',
                              ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: 24,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                      child: Text(
                        'Schedule',
                        style: FlutterFlowTheme.subtitle1.override(
                          fontFamily: 'Comfortaa',
                          color: Color(0xFF292929),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(8, 16, 8, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'PickUp',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Comfortaa',
                              color: Color(0xFF292929),
                            ),
                          ),
                          Text(
                            'Mon, 05 Jul - 07.00 - 10.00',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Comfortaa',
                              color: Color(0xFF292929),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(8, 8, 8, 32),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Delivery ',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Comfortaa',
                              color: Color(0xFF292929),
                            ),
                          ),
                          Text(
                            'Mon, 05 Jul - 07.00 - 10.00',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Comfortaa',
                              color: Color(0xFF292929),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                      child: Text(
                        'Notes',
                        style: FlutterFlowTheme.subtitle1.override(
                          fontFamily: 'Comfortaa',
                          color: Color(0xFF292929),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(8, 16, 8, 72),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Additional Notes',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Comfortaa',
                              color: Color(0xFF292929),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment(0, 1),
              child: Padding(
                padding: EdgeInsets.fromLTRB(24, 0, 24, 16),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Process',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 56,
                    color: FlutterFlowTheme.primaryColor,
                    textStyle: FlutterFlowTheme.title3.override(
                      fontFamily: 'Comfortaa',
                    ),
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.primaryColor,
                      width: 2,
                    ),
                    borderRadius: 16,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
