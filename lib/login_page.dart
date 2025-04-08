import 'package:flutter/material.dart';
import 'package:flutter_application_1/thems/colors.theme.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Back",
          textAlign: TextAlign.start,
          style: TextStyle(color: Colors.black54, fontSize: 20),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(onPressed:(){}, icon:Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome back !',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: lightColorScheme.primary,
                ),
              ),
              SizedBox(height:25),
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
              SizedBox(height: 25),
              TextFormField(
                decoration: InputDecoration(
                  label: Text('Password'),
                  hintText: "Enter password",
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
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(
                        context,
                        "forgot_password",
                      );
                    },
                    child: Text(
                      "forgot password?",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, "create_Password");
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: lightColorScheme.primary,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                 ),
              ),
               Expanded(
                child: Column(
                   children: [
                    Image(
                      image:AssetImage("assets/login.png"),
                      height:200,
                      width:200,
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
            ],
          ),
        ),
      ),
    );
  }
}
