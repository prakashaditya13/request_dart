/*
* This Code is not Optimized fo production mode, if you are deploy it to production mode then first Refactered the code for better optimization.
*
* */

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              fit: StackFit.loose,
              children: [
                CustomPaint(
                  size: Size(900,400),
                  painter: RPSCustomPainter(),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 50.0,),
                          Image(image: AssetImage('images/ring.png'),),
                          SizedBox(height: 10.0,),
                          Text('KARMA',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5
                          ),
                          ),
                          SizedBox(child: Container(color: Colors.white,height: 1.0,width: 97.0,margin: EdgeInsets.only(top: 0.0),),),
                          Text('UNITING POWER',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 8.0,
                            letterSpacing: 2.0
                          ),),
                          SizedBox(height: 10.0,),
                          Text('LOGIN',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19.0,
                            fontWeight: FontWeight.w700
                          ),
                          )
                        ],
                      ),
                      SizedBox(height: 50.0,),
                      Container(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextFormField(
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                                LengthLimitingTextInputFormatter(10),
                              ],
                              decoration: InputDecoration(
                                hintText: 'Phone Number',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey, width: 0.0)
                                ),
                                contentPadding: EdgeInsets.all(15.0),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(width: 0.5, color: Colors.grey),
                                ),
                              ),

                            ),
                            SizedBox(height: 40.0,),
                            TextFormField(
                              obscureText: _obscureText,
                              obscuringCharacter: "*",
                              decoration: InputDecoration(
                                hintText: 'Password',
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey, width: 0.0)
                                ),
                                contentPadding: EdgeInsets.all(15.0),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(width: 0.5, color: Colors.grey),
                                ),
                                suffixIcon: new GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _obscureText = !_obscureText;
                                    });
                                  },
                                  child:
                                  new Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
                                ),
                              ),
                            ),
                            SizedBox(height: 15.0,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('Forgot Password',
                                style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(255, 133, 0,1.0),
                                  letterSpacing: 1.0
                                ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 50.0,),
                      RaisedButton(onPressed: ()=>{},
                      child: Text('Login',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w700,letterSpacing: 0.8),),
                        color: Colors.lightGreen,
                        textColor: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0))
                      ),
                      SizedBox(height: 20.0,),
                      RichText(text: TextSpan(
                        text: 'Not a member yet?',
                        style: TextStyle(
                          color: Colors.black
                        ),
                        children: [
                          TextSpan(
                            text: ' Click here',
                            style: TextStyle(
                              color: Color.fromRGBO(255, 133, 0,1.0),
                              fontWeight: FontWeight.w600
                            )
                          )
                        ]
                      ))
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Color.fromRGBO(255, 133, 0,1.0)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
    Path path_0 = Path();
    path_0.moveTo(size.width*-0.00,size.height*-0.00);
    path_0.lineTo(size.width,0);
    path_0.quadraticBezierTo(size.width*1.35,size.height*0.55,size.width*0.50,size.height*0.58);
    path_0.quadraticBezierTo(size.width*-0.34,size.height*0.55,size.width*-0.00,size.height*-0.00);
    path_0.close();
    canvas.drawPath(path_0, paint_0);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
