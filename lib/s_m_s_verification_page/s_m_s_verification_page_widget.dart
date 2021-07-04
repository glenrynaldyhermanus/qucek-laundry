import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SMSVerificationPageWidget extends StatefulWidget {
  SMSVerificationPageWidget({Key key}) : super(key: key);

  @override
  _SMSVerificationPageWidgetState createState() =>
      _SMSVerificationPageWidgetState();
}

class _SMSVerificationPageWidgetState extends State<SMSVerificationPageWidget> {
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.tertiaryColor,
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment(0.06, -0.63),
                child: Image.asset(
                  'assets/images/im_brand.png',
                  width: 280,
                  height: 100,
                  fit: BoxFit.contain,
                ),
              ),
              Align(
                alignment: Alignment(0.7, -0.4),
                child: Text(
                  'Store',
                  style: FlutterFlowTheme.title1.override(
                    fontFamily: 'Comfortaa',
                    color: FlutterFlowTheme.primaryColor,
                    fontSize: 32,
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0, 0.67),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment(0, 0),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(32, 0, 32, 0),
                        child: TextFormField(
                          controller: textController,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Verification Code',
                            hintStyle: FlutterFlowTheme.title3.override(
                              fontFamily: 'Comfortaa',
                              color: FlutterFlowTheme.primaryColor,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.primaryColor,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(4),
                                bottomRight: Radius.circular(4),
                                topLeft: Radius.circular(4),
                                topRight: Radius.circular(4),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.primaryColor,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(4),
                                bottomRight: Radius.circular(4),
                                topLeft: Radius.circular(4),
                                topRight: Radius.circular(4),
                              ),
                            ),
                          ),
                          style: FlutterFlowTheme.title3.override(
                            fontFamily: 'Comfortaa',
                            color: FlutterFlowTheme.primaryColor,
                          ),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(24, 120, 24, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          if (textController.text.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Enter SMS verification code.'),
                              ),
                            );
                            return;
                          }
                          final phoneVerifiedUser = await verifySmsCode(
                            context: context,
                            smsCode: textController.text,
                          );
                          if (phoneVerifiedUser == null) {
                            return;
                          }
                          await Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePageWidget(),
                            ),
                            (r) => false,
                          );
                        },
                        text: 'Verify',
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
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
