import 'dart:convert';
import 'package:lol9/sign_up/sign_up_widget.dart';
import 'package:lol9/sharedpreferences.dart';
import '../components/theme.dart';
import '../components/widgets.dart';
import '../forgotpassword/forgotpasswordPage.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class LoginpageWidget extends StatefulWidget {
  const LoginpageWidget({Key key}) : super(key: key);

  @override
  _LoginpageWidgetState createState() => _LoginpageWidgetState();
}

class _LoginpageWidgetState extends State<LoginpageWidget> {
  bool isSignupScreen = false;
  bool isRememberMe = false;
  final Prefs _prefs = Prefs();
  ScaffoldMessengerState scaffoldMessenger;
  TextEditingController userNameController1;
  TextEditingController passwordController2;

  bool passwordVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    userNameController1 = TextEditingController();
    passwordController2 = TextEditingController();

    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    scaffoldMessenger = ScaffoldMessenger.of(context);
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFD32F2F),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 2),
                      child: Image.asset(
                        'assets/images/Valentine._Valentines_day._Be_my_valentine._Template_greeting_card._Instagram_story._(20__20_in).png',
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 2),
                      child: Text(
                        'Where luxury meets comfort to give you the perfect vacation',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).subtitle1.override(
                              fontFamily: 'Almendra',
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.56),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(40, 0, 40, 20),
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xA8FFFFFF),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                            child: TextFormField(
                              controller: userNameController1,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Username',
                                hintText: 'Username',
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                              ),
                              style: GoogleFonts.getFont(
                                'Roboto',
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.65, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ForgotpasswordWidget(),
                                ),
                              );
                            },
                            text: 'Forgot password?',
                            options: FFButtonOptions(
                              width: 150,
                              height: 20,
                              color: Color(0x00FFFFFF),
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: Colors.white,
                                    fontSize: 1,
                                    fontWeight: FontWeight.bold,
                                  ),
                              elevation: 0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: 0,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(40, 0, 40, 20),
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xA9FFFFFF),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                            child: TextFormField(
                              controller: passwordController2,
                              obscureText: !passwordVisibility,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                hintText: 'Password',
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                suffixIcon: InkWell(
                                  onTap: () => setState(
                                    () => passwordVisibility =
                                        !passwordVisibility,
                                  ),
                                  child: Icon(
                                    passwordVisibility
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                    size: 22,
                                  ),
                                ),
                              ),
                              style: GoogleFonts.getFont(
                                'Roboto',
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 9, 0, 12),
                        child: FFButtonWidget(
                          onPressed: loginFunction,
                          text: 'login',
                          options: FFButtonOptions(
                            width: 250,
                            height: 55,
                            color: Colors.white,
                            textStyle: GoogleFonts.getFont(
                              'Roboto',
                              color: Color(0xFFFF0000),
                              fontSize: 18,
                            ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 2,
                            ),
                            borderRadius: 30,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 9, 0, 12),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpWidget(),
                              ),
                            );
                          },
                          text: 'Sign Up',
                          options: FFButtonOptions(
                            width: 250,
                            height: 55,
                            color: Colors.white,
                            textStyle: GoogleFonts.getFont(
                              'Roboto',
                              color: Color(0xFFFF0000),
                              fontSize: 18,
                            ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 2,
                            ),
                            borderRadius: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  SnackBar mySnackBar(String message) {
    return SnackBar(
        backgroundColor: Colors.green,
        content: Text(
          message,
          textAlign: TextAlign.center,
        ));
  }

  void loginFunction() {
    if (userNameController1.text.isEmpty) {
      scaffoldMessenger.showSnackBar(
        mySnackBar("Provide Username"),
      );
      return;
    } else if (passwordController2.text.isEmpty) {
      scaffoldMessenger.showSnackBar(
        mySnackBar("Provide Password"),
      );
      return;
    } else {
      print(userNameController1.text);
      print(passwordController2.text);
      signIn(userNameController1.text, passwordController2.text);
    }
  }

  signIn(String username, String password) async {
    DialogBuilder(this.context).showLoadingIndicator(
        "Please wait as we authenticate you", "Authentication");
    Map data = {'username': username, 'password': password};
    var jsonResponse;
    var response = await http.post(
        Uri.parse("https://jmworlds.000webhostapp.com/login.php"),
        body: data);
    print(response.body);
    if (response.statusCode == 200) {
      jsonResponse = json.decode(response.body);
      if (jsonResponse != null) {
        setState(() {
          DialogBuilder(this.context).hideOpenDialog();
        });
        int isRegistered = jsonResponse['code'];
        if (isRegistered == 1) {
          var username = jsonResponse['fname'];
          var email = jsonResponse['email'];
          print(username);
          _prefs.addStringToSF("username", username);
          _prefs.addStringToSF("email", email);
          await Navigator.push(
            this.context,
            MaterialPageRoute(
              builder: (context) => NavBarPage(initialPage: 'dashboard'),
            ),
          );
        } else {
          scaffoldMessenger.showSnackBar(mySnackBar("Incorrect credentials"));
        }
      }
    } else {
      setState(() {
        DialogBuilder(this.context).hideOpenDialog();
      });
    }
  }
}

class DialogBuilder {
  DialogBuilder(this.context);

  final BuildContext context;

  void showLoadingIndicator(String text, String header) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return WillPopScope(
            onWillPop: () async => false,
            child: AlertDialog(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
              backgroundColor: Colors.brown,
              content: LoadingIndicator(text: text, header: header),
            ));
      },
    );
  }

  void hideOpenDialog() {
    Navigator.of(context).pop();
  }
}

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({this.text = '', this.header = ''});

  final String text;
  final String header;

  @override
  Widget build(BuildContext context) {
    var displayedText = text;
    var headerText = header;
    return Container(
      padding: EdgeInsets.all(6),
      color: Colors.yellow,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          _getLoadingIndicator(),
          _getHeading(context, headerText),
          _getText(displayedText)
        ],
      ),
    );
  }

  Padding _getLoadingIndicator() {
    return Padding(
        child: Container(
            child: CircularProgressIndicator(strokeWidth: 3, color: Colors.red),
            width: 32,
            height: 32),
        padding: const EdgeInsets.only(bottom: 16));
  }

  Text _getText(String displayedText) {
    return Text(
      displayedText,
      textAlign: TextAlign.center,
    );
  }

  Widget _getHeading(context, String headerText) {
    return Padding(
        child: Text(
          headerText,
          textAlign: TextAlign.center,
        ),
        padding: const EdgeInsets.only(bottom: 4));
  }
}
