import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(255, 133, 0, 1.0),
      body: SafeArea(
          child: Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(30.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text('Karma Drives', style: TextStyle(
                          fontSize: 21.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),),
                      ),
                      Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () => {
                                  print("Profile Open")
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(25.0))
                                  ),
                                  width: 100.0,
                                  padding: EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Text('View Profile',style: TextStyle(fontWeight: FontWeight.bold),),
                                  ),
                                ),
                              )
                            ],
                          ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: Container(
                      padding: EdgeInsets.all(20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          suffixIcon: GestureDetector(
                            onTap: (){
                            },
                              child: Icon(Icons.search),
                          ),
                          contentPadding: const EdgeInsets.all(17.0),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Search here...',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40.0),
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 2.0,
                            ),
                          ),
                        ),
                      )
                    ),
                ),
                //List View Container Starts from here
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30.0),
                  height: 520.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50.0),
                          topLeft: Radius.circular(50.0)
                      )
                  ),
                   // To start a list View from here,
                )
              ],
            ),
          )
      ),
    );
  }
}
