import 'package:flutter/material.dart';
import 'login_page.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

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
                const SizedBox(height: 65),

                //logo placeholder (dummy google)
                Image.asset(
                  'lib/images/google.png',
                  height: 80,
                ),

                const SizedBox(height: 40),

                const Text(
                  'Create your account',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),

                const SizedBox(height: 30),

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

                const SizedBox(height: 21),

                //Email Textfield
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60.0),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(Icons.email, color: Colors.white)),
                  ),
                ),

                const SizedBox(height: 21),

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

                const SizedBox(height: 21),

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

                const SizedBox(height: 30),

                //login button
                ElevatedButton(
                  child: const Text('SIGN UP'),
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
                      horizontal: 90,
                      vertical: 13,
                    ),
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    textStyle: const TextStyle(fontSize: 22.0),
                  ),
                ),

                const SizedBox(height: 70),

                const Text(
                  'Already have an account?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
                const SizedBox(height: 10),

                //login up button
                TextButton(
                  child: const Text('LOGIN',
                      style: TextStyle(color: Colors.white, fontSize: 22.0)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
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
