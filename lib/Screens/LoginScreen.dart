import 'package:flutter/material.dart';
import '../Components/textfield.dart';
import '../constants.dart' as constant;

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constant.backgroundcolor,
      body: Column(crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Image.network(
                'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSLonID4wYIhZ-49LdEWrLVTyhGAUMoX8xVDGPJi6yxmtMY9ZTd'),
          ),
          textfield(
            text: 'EMAIL',
            isPassword: false,
          ),
          textfield(
            text: 'PASSWORD',
            isPassword: true,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(40.0),
            child: Container(
              width: 160,
              color: constant.textColor2,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(
                      width: 2,
                      color: constant.textColor2,
                    )
                  )
                ),
                onPressed: () {},
                child: Text('Login',
                style: TextStyle(
                  fontSize: 25.0,
                  color: constant.backgroundcolor,
                ),),
              ),
            ),
          ),
          Expanded(child: Container())
        ],
      ),
    );
  }
}
