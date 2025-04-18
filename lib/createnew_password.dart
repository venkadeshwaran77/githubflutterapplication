import 'package:flutter/material.dart';
import 'package:flutter_application_1/cliper.dart';
import 'package:flutter_application_1/thems/colors.theme.dart';

class CreatePassword extends StatelessWidget {
  const CreatePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.white,
        title: Text(
          "Back",
          textAlign: TextAlign.start,
          style: TextStyle(color: Colors.black54, fontSize: 20),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, "Login_screen");
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      backgroundColor:Colors.white,
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create new password",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: lightColorScheme.primary,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "your new password must be unique from those",
                style: TextStyle(color: Colors.black38, fontSize: 14),
              ),
              Text(
                "previously used",
                style: TextStyle(color: Colors.black38, fontSize: 14),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  label: Text('New Password'),
                  hintText: "Enter the New Password",
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
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  label: Text('Confirm Password'),
                  hintText: "Enter the Confirm Password",
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
              SizedBox(height: 20),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: lightColorScheme.primary,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      "Reset Password",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height:25),
              Center(
                child: Column(
                  children: [
                    Image(
                      image: AssetImage("assets/password.png"),
                      height: 200,
                      width: 200,
                    ),
                     ClipOval(
                        clipper: CustomClip(),
                        child: Container(
                          width: 120,
                          height: 80,
                          color: Colors.grey.shade300,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
