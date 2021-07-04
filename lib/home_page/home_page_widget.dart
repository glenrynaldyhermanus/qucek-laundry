import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../login_page/login_page_widget.dart';
import '../order_detail_page/order_detail_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.tertiaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          'Hi Gilang',
          style: FlutterFlowTheme.subtitle2.override(
            fontFamily: 'Comfortaa',
            color: Color(0xFF292929),
          ),
        ),
        actions: [
          Align(
            alignment: Alignment(0, 0),
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 24, 0),
              child: InkWell(
                onTap: () async {
                  await signOut();
                  await Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPageWidget(),
                    ),
                    (r) => false,
                  );
                },
                child: Text(
                  'Log Out',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Comfortaa',
                    color: Color(0xFFFF2727),
                  ),
                ),
              ),
            ),
          )
        ],
        centerTitle: false,
        elevation: 0,
      ),
      body: SafeArea(
        child: DefaultTabController(
          length: 4,
          initialIndex: 0,
          child: Column(
            children: [
              TabBar(
                labelColor: FlutterFlowTheme.primaryColor,
                indicatorColor: FlutterFlowTheme.secondaryColor,
                tabs: [
                  Tab(
                    text: 'New',
                    icon: Icon(
                      Icons.fiber_new,
                    ),
                    iconMargin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                  ),
                  Tab(
                    text: 'Process',
                    icon: Icon(
                      Icons.refresh_rounded,
                    ),
                    iconMargin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                  ),
                  Tab(
                    text: 'Delivery',
                    icon: Icon(
                      Icons.delivery_dining,
                    ),
                    iconMargin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                  ),
                  Tab(
                    text: 'Completed',
                    icon: Icon(
                      Icons.clear_all,
                    ),
                    iconMargin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                  )
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.tertiaryColor,
                      ),
                      child: StreamBuilder<List<OrdersRecord>>(
                        stream: queryOrdersRecord(
                          queryBuilder: (ordersRecord) =>
                              ordersRecord.orderBy('created_time'),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(child: CircularProgressIndicator());
                          }
                          List<OrdersRecord> listViewOrdersRecordList =
                              snapshot.data;
                          // Customize what your widget looks like with no query results.
                          if (snapshot.data.isEmpty) {
                            return Container(
                              height: 100,
                              child: Center(
                                child: Text('No results.'),
                              ),
                            );
                          }
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewOrdersRecordList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewOrdersRecord =
                                  listViewOrdersRecordList[listViewIndex];
                              return Padding(
                                padding: EdgeInsets.fromLTRB(24, 16, 24, 0),
                                child: InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            OrderDetailPageWidget(),
                                      ),
                                    );
                                  },
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.tertiaryColor,
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          color: FlutterFlowTheme.primaryColor,
                                          width: 2,
                                        ),
                                      ),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(16, 16, 16, 16),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  listViewOrdersRecord
                                                      .serviceName,
                                                  style: FlutterFlowTheme
                                                      .subtitle2
                                                      .override(
                                                    fontFamily: 'Comfortaa',
                                                    color: Color(0xFF292929),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 4, 0, 0),
                                                  child: Text(
                                                    dateTimeFormat(
                                                        'relative',
                                                        listViewOrdersRecord
                                                            .createdTime),
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Comfortaa',
                                                      color: Color(0xFF292929),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                            Text(
                                              listViewOrdersRecord.status,
                                              style: FlutterFlowTheme.subtitle2
                                                  .override(
                                                fontFamily: 'Comfortaa',
                                                color: FlutterFlowTheme
                                                    .primaryColor,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                    Container(),
                    Container(),
                    Container()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
