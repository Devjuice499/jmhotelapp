import 'dart:convert';

import 'package:lol9/payment.dart';

import '../components/drop_down.dart';
import '../components/theme.dart';
import '../components/util.dart';
import '../components/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

import 'package:http/http.dart' as http;
import 'components/theme.dart';
import 'components/util.dart';
import 'components/widgets.dart';
import 'package:lol9/test.dart';

class BookWidget extends StatefulWidget {
  final Hotels value;

  const BookWidget({Key key, this.value}) : super(key: key);

  @override
  _BookWidgetState createState() => _BookWidgetState();
}

class _BookWidgetState extends State<BookWidget> {
  DateTime datePicked1;
  DateTime datePicked2;
  String dropDownValue1;
  String dropDownValue2;
  TextEditingController textController1;
  TextEditingController textController2;
  TextEditingController textController3;
  TextEditingController textController4;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFD32F2F),
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_rounded,
            color: Color(0xFFFFFFFFFF),
            size: 24,
          ),
        ),
        title: Text(
          'BOOKING',
          style: FlutterFlowTheme.of(context).subtitle1.override(
                fontFamily: 'Lexend Deca',
                color: Color(0xFFFFFFFFFFF),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Color(0xFFF7F7F8),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(24, 0, 24, 2),
                            child: TextFormField(
                              controller: textController1,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Full Name',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF8B97A2),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                hintText:
                                    'Name of one of the people staying at this property.',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF8B97A2),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFDCE0E4),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFDCE0E4),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText2
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF0F181F),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(24, 0, 24, 8),
                            child: TextFormField(
                              controller: textController2,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Email Address',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF8B97A2),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                hintText:
                                    'We’ll send your confirmation email to this address',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF8B97A2),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFDCE0E4),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFDCE0E4),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText2
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF0F181F),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(24, 0, 24, 8),
                            child: TextFormField(
                              controller: textController3,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Cell Phone',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF8B97A2),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                hintText:
                                    'We’ll only contact you in an emergency',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF8B97A2),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFDCE0E4),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFDCE0E4),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText2
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF0F181F),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(24, 0, 24, 8),
                            child: TextFormField(
                              controller: textController4,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Address',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF8B97A2),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                hintText:
                                    'We shall use this for billing purposes',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF8B97A2),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFDCE0E4),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFDCE0E4),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText2
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF0F181F),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.44,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: Color(0xFFCFD4DB),
                                      width: 1,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12, 5, 12, 5),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          valueOrDefault<String>(
                                            dateTimeFormat(
                                                'yMMMd', datePicked1),
                                            'Check-in Date',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle2
                                              .override(
                                                fontFamily: 'Lexend Deca',
                                                color: Color(0xFF57636C),
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                        InkWell(
                                          onTap: () async {
                                            await DatePicker.showDatePicker(
                                              context,
                                              showTitleActions: true,
                                              onConfirm: (date) {
                                                setState(
                                                    () => datePicked1 = date);
                                              },
                                              currentTime: getCurrentTimestamp,
                                              minTime: getCurrentTimestamp,
                                            );
                                          },
                                          child: Icon(
                                            Icons.date_range_outlined,
                                            color: Color(0xFF57636C),
                                            size: 24,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.44,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: Color(0xFFCFD4DB),
                                    width: 1,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12, 5, 12, 5),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        valueOrDefault<String>(
                                          dateTimeFormat('yMMMd', datePicked2),
                                          'Check-out Date',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color: Color(0xFF57636C),
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                      InkWell(
                                        onTap: () async {
                                          await DatePicker.showDatePicker(
                                            context,
                                            showTitleActions: true,
                                            onConfirm: (date) {
                                              setState(
                                                  () => datePicked2 = date);
                                            },
                                            currentTime: getCurrentTimestamp,
                                            minTime: getCurrentTimestamp,
                                          );
                                        },
                                        child: Icon(
                                          Icons.date_range_outlined,
                                          color: Color(0xFF57636C),
                                          size: 24,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                                child: FlutterFlowDropDown(
                                  options: ['1', '2', '3', '4', '5'].toList(),
                                  onChanged: (val) =>
                                      setState(() => dropDownValue1 = val),
                                  width: 180,
                                  height: 50,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                      ),
                                  hintText: 'ROOMS',
                                  fillColor: Color(0xFFE1DDDD),
                                  elevation: 2,
                                  borderColor: Colors.transparent,
                                  borderWidth: 0,
                                  borderRadius: 5,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      12, 4, 12, 4),
                                  hidesUnderline: true,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                                child: FlutterFlowDropDown(
                                  options: ['1', '2', '3', '4', '5'].toList(),
                                  onChanged: (val) =>
                                      setState(() => dropDownValue2 = val),
                                  width: 180,
                                  height: 50,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                      ),
                                  hintText: 'GUESTS',
                                  fillColor: Color(0xFFE1DDDD),
                                  elevation: 2,
                                  borderColor: Colors.transparent,
                                  borderWidth: 0,
                                  borderRadius: 5,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      12, 4, 12, 4),
                                  hidesUnderline: true,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: FFButtonWidget(
                                onPressed: bookingfunction,
                                text: ('Proceed to payment.'),
                                options: FFButtonOptions(
                                  width: 230,
                                  height: 50,
                                  color: Color(0xFFD32F2F),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                  elevation: 2,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: 8,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  String addingtotalfee() {
    var a = "${widget.value.cleaning_fee}";
    var d = "${widget.value.taxes}";
    var k = "${widget.value.price}";
    var o = "${widget.value.total}";
    var w = dropDownValue1;
    var y = dropDownValue2;

    var p = double.parse(a);
    var q = double.parse(d);
    var r = double.parse(k);
    var s = double.parse(w);
    var t = double.parse(y);
    var h = double.parse(o);
    var sum = (p + q + r) * s * t;

    print(sum);

    return sum.toStringAsFixed(2);
  }

  void bookingfunction() {
    if (textController1.text.isEmpty) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text("Error"),
                content: Text("Your name has not been keyed in"),
                actions: [
                  TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('Ok'))
                ],
              ));
      return;
    } else if (textController2.text.isEmpty) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text("Error"),
                content: Text("Your Email Address has not been keyed in"),
                actions: [
                  TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('Ok'))
                ],
              ));

      return;
    } else if (textController3.text.isEmpty) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text("Error"),
                content: Text("Your Cell Phone has not been keyed in"),
                actions: [
                  TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('Ok'))
                ],
              ));

      return;
    } else if (textController4.text.isEmpty) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text("Error"),
                content: Text("Your Address is missing"),
                actions: [
                  TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('Ok'))
                ],
              ));

      return;
    } else if (datePicked1 == null) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text("Error"),
                content: Text("Enter check-in date"),
                actions: [
                  TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('Ok'))
                ],
              ));

      return;
    } else if (datePicked2 == null) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text("Error"),
                content: Text("Enter check-out date"),
                actions: [
                  TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('Ok'))
                ],
              ));

      return;
    } else if (dropDownValue1 == null) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text("Error"),
                content: Text("Enter number of rooms you desire"),
                actions: [
                  TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('Ok'))
                ],
              ));

      return;
    } else if (dropDownValue2 == null) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text("Error"),
                content: Text("Enter number of guests you have"),
                actions: [
                  TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('Ok'))
                ],
              ));

      return;
    } else {
      bookingreservation(
          textController1.text,
          textController2.text,
          textController3.text,
          datePicked1.toString(),
          datePicked2.toString(),
          dropDownValue1,
          dropDownValue2,
          '${widget.value.hotel}');
      // print ('\$'+ addingtotalfee() ??'');
      // showDialog(
      //     context: context,
      //     builder: (context) => AlertDialog(
      //       title: Text("Confirmation"),
      //       content: Text('You are about to book the room(s) valued at '+'\$'+ addingtotalfee() ??''),
      //       actions: [
      //         TextButton(onPressed: ()=> Navigator.pop(context), child: Text('Cancel')),
      //         TextButton(onPressed: (){
      //           var route = new MaterialPageRoute(
      //             builder: (BuildContext context)=> new PaymentWidget(value:widget.value),
      //
      //           );
      //           Navigator.of(context).pushReplacement(route);
      //         }, child: Text('Proceed'))
      //       ],
      //     ));

      //888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888
      // var route = new MaterialPageRoute(
      //   builder: (BuildContext context)=> new PaymentWidget(value:widget.value),
      //
      // );
      // Navigator.of(context).push(route);
    }
  }

  bookingreservation(
      String fullname,
      String email,
      String cell,
      String check_in,
      String check_out,
      String rooms,
      String guest,
      String location) async {
    Map data = {
      'full_name': fullname,
      'email': email,
      'cell_phone': cell,
      'check-in': check_in,
      'check-out': check_out,
      'rooms': rooms,
      'guest': guest,
      'location': '${widget.value.hotel}'
    };
    var jsonResponse;
    var response = await http.post(
        Uri.parse("https://jmworlds.000webhostapp.com/bookedreservations.php"),
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
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    title: Text("Confirmed"),
                    content: Text(
                        "Your attempt to book has been registered! Proceed to payment to finalize your transaction. Total Charges is "
                                    '\$' +
                                addingtotalfee() ??
                            ''),
                    actions: [
                      TextButton(
                          onPressed: () {
                            var s = '\$' + addingtotalfee() ?? '';
                            var route = new MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  new PaymentWidget(value: widget.value),
                            );
                            Navigator.of(context).pushReplacement(route);
                          },
                          child: Text('Ok'))
                    ],
                  ));
        } else {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    title: Text("Error"),
                    content: Text("You are not registered!"),
                    actions: [
                      TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text('Ok'))
                    ],
                  ));
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
