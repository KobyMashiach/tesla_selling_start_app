import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class MySellingPage extends StatelessWidget {
  const MySellingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WebsafeSvg.asset("lib/assets/Text.svg");
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "lib/assets/car_background.png",
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WebsafeSvg.asset("lib/assets/Text.svg", height: 20),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      "Summary",
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Your Model Y",
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                    Text(
                      "\$60,700",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ButtonTheme(
                      minWidth: 200,
                      child: OutlineButton(
                        onPressed: () {},
                        child: Text(
                          "Pay",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        borderSide: BorderSide(color: Colors.red),
                        shape: StadiumBorder(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
