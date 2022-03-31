import 'package:flutter/material.dart';

void main() {
  runApp(LoginWidget());
}

class LoginWidget extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: ListView(
        children: [LoginWidget1()],
      ),
    ));
  }
}

class LoginWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator LoginWidget - FRAME
    return Container(
        width: 360,
        height: 690,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 360,
                  height: 690,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/031.png'),
                        fit: BoxFit.fitWidth),
                  ))),
          Positioned(
              top: 544,
              left: 1,
              child: Container(
                  width: 142,
                  height: 129,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/School1.png'),
                        fit: BoxFit.fitWidth),
                  ))),
          Positioned(
              top: 544,
              left: 218,
              child: Container(
                  width: 142,
                  height: 129,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/Playtime1.png'),
                        fit: BoxFit.fitWidth),
                  ))),
          Positioned(
              top: 30,
              left: 1,
              child: Container(
                  width: 389,
                  height: 460,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 354.7357482910156,
                            height: 460,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 354.7357482910156,
                                      height: 460,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 0.25),
                                              offset: Offset(8, 8),
                                              blurRadius: 20)
                                        ],
                                        color: Color.fromRGBO(
                                            185, 185, 185, 0.5799999833106995),
                                      ))),
                              Positioned(
                                  top: 350,
                                  left: 13,
                                  child: Container(
                                      width: 317.44818115234375,
                                      height: 81.9024429321289,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 11,
                                            left: 31,
                                            child: Text(
                                              '登入',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      134, 13, 13, 1),
                                                  fontFamily:
                                                      'HanWangKaiMediumChuIn',
                                                  fontSize: 36,
                                                  letterSpacing:
                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1),
                                            )),
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 317.44818115234375,
                                                height: 81.9024429321289,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(55),
                                                    topRight:
                                                        Radius.circular(55),
                                                    bottomLeft:
                                                        Radius.circular(55),
                                                    bottomRight:
                                                        Radius.circular(55),
                                                  ),
                                                  color: Color.fromRGBO(
                                                      207,
                                                      199,
                                                      18,
                                                      0.3400000035762787),
                                                  border: Border.all(
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 1),
                                                    width: 1,
                                                  ),
                                                ))),
                                      ]))),
                              Positioned(
                                  top: 16,
                                  left: 16,
                                  child: Container(
                                      width: 321.4792785644531,
                                      height: 67.31707763671875,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 321.4792785644531,
                                                height: 67.31707763671875,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(10),
                                                    topRight:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(10),
                                                    bottomRight:
                                                        Radius.circular(10),
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Color.fromRGBO(
                                                            0, 0, 0, 0.25),
                                                        offset: Offset(0, 4),
                                                        blurRadius: 4)
                                                  ],
                                                  color: Color.fromRGBO(
                                                      255,
                                                      255,
                                                      255,
                                                      0.8600000143051147),
                                                  border: Border.all(
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, 1),
                                                    width: 1,
                                                  ),
                                                ))),
                                        TextFormField(
                                          //controller: pwdController,
                                          //obscureText: true,
                                          decoration: InputDecoration(
                                            hintText: '學號',
                                            label: Text(
                                              '我的學號',
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      181, 181, 181, 1),
                                                  fontFamily:
                                                      'HanWangKaiMediumChuIn',
                                                  fontSize: 26,
                                                  letterSpacing:
                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1),
                                            ),
                                          ),
                                        ),
                                        /*
      Positioned(
        
        top: 13.463428497314453,
        left: 27.2098388671875,
        child: Text('我的學號', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(181, 181, 181, 1),
        fontFamily: 'HanWangKaiMediumChuIn',
        fontSize: 26,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
        
      ),)
      ),
      */
                                      ]))),
                              Positioned(
                                  top: 117,
                                  left: 16,
                                  child: Container(
                                      width: 321.4792785644531,
                                      height: 67.31707763671875,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 321.4792785644531,
                                                height: 67.31707763671875,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(10),
                                                    topRight:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(10),
                                                    bottomRight:
                                                        Radius.circular(10),
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Color.fromRGBO(
                                                            0, 0, 0, 0.25),
                                                        offset: Offset(0, 4),
                                                        blurRadius: 4)
                                                  ],
                                                  color: Color.fromRGBO(
                                                      255,
                                                      255,
                                                      255,
                                                      0.8600000143051147),
                                                  border: Border.all(
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, 1),
                                                    width: 1,
                                                  ),
                                                ))),
                                        Positioned(
                                            top: 13.463397979736328,
                                            left: 27.2098388671875,
                                            child: Text(
                                              '我的密碼',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      181, 181, 181, 1),
                                                  fontFamily:
                                                      'HanWangKaiMediumChuIn',
                                                  fontSize: 26,
                                                  letterSpacing:
                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1),
                                            )),
                                      ]))),
                            ]))),
                    Positioned(
                        top: 214.29269409179688,
                        left: 8.062179565429688,
                        child: Text(
                          '忘記密碼了嗎？趕快找輔導老師確認！',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(
                                  224, 16, 16, 0.7599999904632568),
                              fontFamily: 'HanWangKaiMediumChuIn',
                              fontSize: 24,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                  ]))),
        ]));
  }
}
