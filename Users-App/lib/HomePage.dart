import 'package:flutter/material.dart';
import 'BottomBar.dart';
import 'FlightBookingPage.dart';
import 'FlightBookingPageint.dart';
import 'log.dart';
class homepage extends StatefulWidget {
  String username;
  homepage({
    required this.username
});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl, // Set text direction to right-to-left
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.indigo,
          hintColor: Colors.indigo,
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
            color: Colors.indigo,
            foregroundColor: Colors.white,
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.indigo,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("حق چارتر", style: TextStyle(color: Colors.white)),
            centerTitle: true,
          ),
          backgroundColor: Colors.white,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Builder(
                  builder: (context) {
                    return Container(
                      height: 50,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.indigo,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.indigo.withOpacity(0.5),
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) {
                              return FlightBookingApp(username: widget.username,);
                            }),
                          );
                        },
                        child: Text(
                          "پرواز داخلی",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(height: 20),
                Builder(
                  builder: (context) {
                    return Container(
                      height: 50,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.indigo,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.indigo.withOpacity(0.5),
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) {
                              return FlightBookingAppint(username: widget.username,);
                            }),
                          );
                        },
                        child: Text(
                          "پروازهای بین‌المللی",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          bottomNavigationBar: Directionality(
            textDirection: TextDirection.rtl, // Set text direction of bottom navigation bar to right-to-left
            child: Bar(username: widget.username,index: 0),
          ),
        ),
      ),
    );
  }
}