import 'package:flutter/material.dart';
import 'package:parking_auto/Screen/login_with_phone.dart';
import 'package:parking_auto/controller/register_controller.dart';

class RegisterUser extends StatefulWidget {
  const RegisterUser({Key? key}) : super(key: key);

  @override
  _RegisterUser createState() => _RegisterUser();
}

class _RegisterUser extends State<RegisterUser> {

  @override
  Widget build(BuildContext context) {
    RegisterController registerController = RegisterController();

  //TextEditingController usernameController = TextEditingController();
  //TextEditingController emailController = TextEditingController();
  //TextEditingController phoneController = TextEditingController();
  //TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 50,
              child: TextFormField(
                controller: registerController.usernameController,
                decoration: InputDecoration(
                  hintText: 'username',
               
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                ),
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 50,
              child: TextFormField(
                controller: registerController.emailController,
                decoration: InputDecoration(
                  hintText: 'email',
               
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                ),
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 50,
              child: TextFormField(
                //controller: authController.passwordController,
                controller: registerController.passwordController,
                decoration: InputDecoration(
                  hintText: 'Password',
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          ElevatedButton(
              onPressed: () {
                //          Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => LoginWithPhone(),
                // ));
             
                registerController.registerUser(context);
               
              },  
              
              child: Text(
                'Sign up',
              )),
              Text('If you have account, please click "Login" button'),
              TextButton(
             onPressed: () {
                 Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => LoginWithPhone(),
        ));
               // authController.loginUser();
              },
              child: const Text('Login'),
            ),
        ],
      ),
    );
  }
}