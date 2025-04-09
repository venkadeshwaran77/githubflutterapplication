import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/thems/colors.theme.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultpinTheme = PinTheme(
      width:56,
      height:60,
      textStyle:TextStyle(
        fontSize:22,
        color:Colors.black,
      ),
      decoration:BoxDecoration(
        color:Colors.white24,
        borderRadius:BorderRadius.circular(8),
        border:Border.all(color:lightColorScheme.primary),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Back",
          style: TextStyle(fontSize: 18, color: Colors.black54),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, "Login_screen");
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "OTP Verification",
            style: TextStyle(
              fontSize: 23,
              color: lightColorScheme.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height:25),
          Text(
            "Enter the verification code we just sent on your email",
            style: TextStyle(color: Colors.black38, fontSize: 14),
          ),
          Text(
            "address",
            style: TextStyle(color: Colors.black38, fontSize: 14),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child:Container(
              margin: EdgeInsets.only(top:40),
             width: double.infinity,
              child:Pinput(
                length:4,
               defaultPinTheme:defaultpinTheme,
               focusedPinTheme:defaultpinTheme.copyWith(
                decoration:defaultpinTheme.decoration!.copyWith(
                  border:Border.all(color:Colors.white)
                ),
               ),
               onCompleted:(pin)=>debugPrint(pin),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text("Re-send code in")),
          ),
          SizedBox(height: 20),
            Column(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            children: [
                Container(
                 height: 50,
                      decoration: BoxDecoration(
                        color: lightColorScheme.primary,
                        borderRadius: BorderRadius.circular(5),
                      ),
                     child: Center(
                        child: Text(
                          "Verify",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
              ],
            ),
          SizedBox(height: 35),
          Expanded(
            child: Column(
              children: [
                Image(
                  image: AssetImage("assets/otp.png"),
                  height: 200,
                  width: 200,
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: BorderSide.strokeAlignCenter,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(color: Colors.black45),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, "otp_screen");
                        },
                        child: Text(
                          " Login Now",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: lightColorScheme.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
