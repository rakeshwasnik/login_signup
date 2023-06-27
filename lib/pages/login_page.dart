import 'package:flutter/material.dart';
import 'signup_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/images/img.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(children: [
                const SizedBox(height: 100),

                //logo placeholder (dummy google)
                Image.asset(
                  'lib/images/google.png',
                  height: 80,
                ),

                const SizedBox(height: 65),

                //username textfield
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60.0),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        hintText: "Username",
                        hintStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(Icons.person, color: Colors.white)),
                  ),
                ),

                const SizedBox(height: 40),

                //password textfield
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60.0),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(Icons.lock, color: Colors.white)),
                  ),
                ),

                const SizedBox(height: 40),

                //login button
                ElevatedButton(
                  child: const Text('LOGIN'),
                  onPressed: () {
                    const snackBar = SnackBar(
                      content: Text('Connect Auth first'),
                      duration: Duration(seconds: 4),
                    );

                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 100,
                      vertical: 13,
                    ),
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    textStyle: const TextStyle(fontSize: 22.0),
                  ),
                ),

                const SizedBox(height: 10),

                //forgot your password?
                TextButton(
                  child: const Text('Forgot your password?'),
                  onPressed: () {
                    const snackBar = SnackBar(
                      content: Text('Connect Auth first'),
                      duration: Duration(seconds: 4),
                    );

                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                ),

                const SizedBox(height: 60),

                const Text(
                  'New to the App?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),

                const SizedBox(height: 20),

                //sign up button
                TextButton(
                  child: const Text('SIGN UP',
                      style: TextStyle(color: Colors.white, fontSize: 22.0)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignupPage()));
                  },
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
