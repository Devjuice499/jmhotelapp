import '../components/theme.dart';
import '../components/util.dart';
import '../loginpage/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class SplashWidget extends StatefulWidget {
  const SplashWidget({Key key}) : super(key: key);

  @override
  _SplashWidgetState createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(Duration(milliseconds: 5000),() {});
      await Navigator.pushReplacement(

        context,
        MaterialPageRoute(builder: (context) => LoginpageWidget(),),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFD32F2F),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0.1),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                  child: Text('Official App', style: FlutterFlowTheme.of(context).bodyText1.override(fontFamily: 'Lustria', color: Color(0xFFFFFFFFFFFF), fontSize: 20,),),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.1, 0.02),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                  child: Text(
                    'Welcome to the JM Hotels & Resorts',

                    style: FlutterFlowTheme.of(context).title1.override(
                          fontFamily: 'Lustria',
                          color: Colors.white,
                          fontSize: 19,
                        ),

                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.02, 0.46),
                child: Lottie.asset('assets/lottie_animations/lf30_editor_yqkscf1m.json',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                  animate: true,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.06, -0.5),
                child: Image.asset('assets/images/Valentine._Valentines_day._Be_my_valentine._Template_greeting_card._Instagram_story._(20__20_in).png', width: 200, height: 200, fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
