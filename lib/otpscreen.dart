import 'package:flutter/material.dart';
import 'package:flutter_application_1/thems/colors.theme.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text(
          "Back",
          textAlign: TextAlign.start,
          style: TextStyle(color: Colors.black54, fontSize: 20),
        ),
        backgroundColor: Colors.white,
         leading: IconButton(onPressed:(){
          Navigator.pushReplacementNamed(context,"Login_screen");
         }, icon:Icon(Icons.arrow_back_ios),
        ),
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
          child:Column(
            crossAxisAlignment:CrossAxisAlignment.start,
               children: [
             Text("Forgot Password ?",
             style:TextStyle(fontSize:25,fontWeight:FontWeight.w600,
             color:lightColorScheme.primary,
             ),
             ),
              Text("Dont\t' Worry ! it Occurs Please Enter the Email Linked",
                style:TextStyle(color:Colors.black38,fontSize:14),
                ),
                Text("with your Account",
                style:TextStyle(
                  color:Colors.black38,fontSize:14,
                  ),
                ),
                SizedBox(height:20),
                TextFormField(
                  decoration: InputDecoration(
                    label: Text('User ID'),
                    hintText: "Enter User ID",
                    hintStyle: TextStyle(color: Colors.black26),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height:20),
                Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: lightColorScheme.primary,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        "Send code",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                   ),
                   SizedBox(height:20),
                   Center(
                     child: Column(
                      children: [
                        Image(image:AssetImage("assets/forgotpassword.png"),
                        height:200,
                        width:200,
                        ),
                      ],
                     ),
                   ),
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
                            Text(
                              "Login Now",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: lightColorScheme.primary,
                              ),
                            ),
                          ],
                        ),
                      ),
               ],
          ),
          ),
        ),
      ) ,
    );
  }
}
