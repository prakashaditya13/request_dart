
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 133, 0,1.0),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(30.0),
              child: Row(
                children: [
                  Expanded(
                      child: Text('Profile',style: TextStyle(
                        fontSize: 21.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),),
                  ),
                  Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CircleAvatar(
                            backgroundColor: Color.fromRGBO(255, 170, 0,1.0),
                            child: Icon(Icons.create,color: Color.fromRGBO(255, 100, 0,1.0),),
                          )
                        ],
                      ))
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30.0),
                  height: 550.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50.0),
                      topLeft: Radius.circular(50.0)
                    )
                  ),
                  child: Container(
                    margin: EdgeInsets.only(top: 40.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text('Name',style: TextStyle(fontWeight: FontWeight.w700),),
                            ),
                            SizedBox(width: 10.0,),
                            Expanded(
                              child: Text('Phone Number',style: TextStyle(fontWeight: FontWeight.w700),),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(top: 10.0),
                                height: 40.0,
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(211, 211, 211, 1.0),
                                    borderRadius: BorderRadius.all(Radius.circular(5.0))
                                ),
                                child: Center(
                                  child: Text('Paul'),
                                ),
                              ),
                            ),
                            SizedBox(width: 10.0,),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(top: 10.0),
                                height: 40.0,
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(211, 211, 211, 1.0),
                                    borderRadius: BorderRadius.all(Radius.circular(5.0))
                                ),
                                child: Center(
                                  child: Text('+91 7389696136'),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10.0,),
                        Row(
                          children: [
                            Expanded(
                              child: Text('Location',style: TextStyle(fontWeight: FontWeight.w700),),
                            ),
                            SizedBox(width: 10.0,),
                            Expanded(
                              child: Text('Interest',style: TextStyle(fontWeight: FontWeight.w700),),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(top: 10.0),
                                height: 40.0,
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(211, 211, 211, 1.0),
                                    borderRadius: BorderRadius.all(Radius.circular(5.0))
                                ),
                                child: Center(
                                  child: Text('New York City'),
                                ),
                              ),
                            ),
                            SizedBox(width: 10.0,),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(top: 10.0),
                                height: 40.0,
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(211, 211, 211, 1.0),
                                    borderRadius: BorderRadius.all(Radius.circular(5.0))
                                ),
                                child: Center(
                                  child: Text('Football'),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 20.0,),
                        Row(
                          children: [
                            Expanded(child: Text('Notifications',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),)),
                              Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Switch(
                                        value: isSwitched,
                                        onChanged: (value){
                                          setState(() {
                                            isSwitched=value;
                                            print(isSwitched);
                                          });
                                        },
                                        activeTrackColor: Color.fromRGBO(255, 133, 0,0.7),
                                        activeColor: Color.fromRGBO(255, 133, 0,1.0),
                                      ),
                                    ],
                                  )
                              )
                           ]
                        )
                      ],
                    ),
                  ),
                ),
                FractionalTranslation(
                    translation: Offset(0.0, -0.5),
                  child: Align(
                    child: CircleAvatar(
                      radius: 45.0,
                      child: Text("A"),
                    ),
                    alignment: FractionalOffset(0.5, 0.0),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
