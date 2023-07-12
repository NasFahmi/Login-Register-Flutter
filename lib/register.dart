import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginregisterpages/login.dart';
import 'component/textfield.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void register() {}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 48),
              //TODO Logo
              const Image(image: AssetImage('assets/images/digitalent.png')),
              const SizedBox(
                height: 24,
              ),
              //TODO tittle
              Text(
                'Create an Account',
                style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                )),
              ),
              //TODO Subtittle

              Text(
                'Please enter your details',
                style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                        height: 1.5,
                        fontSize: 14,
                        // ! jika ingin menggunakan code hex untuk setting color maka diawali dengan 0xFF(warna hex)
                        color: Color(0XFF79747E))),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Username',
                    style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                            height: 1.5,
                            fontSize: 16,
                            // ! jika ingin menggunakan code hex untuk setting color maka diawali dengan 0xFF(warna hex)
                            color: Colors.black)),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              // editText username
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Textfield_Costume(
                    typeTextField: TextInputType.text,
                    hintText: "Unique Username",
                    controller: usernameController,
                    obscureText: false),
              ),
              const SizedBox(
                height: 16,
              ),
              // editText email
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'E-mail Address',
                    style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                            height: 1.5,
                            fontSize: 16,
                            // ! jika ingin menggunakan code hex untuk setting color maka diawali dengan 0xFF(warna hex)
                            color: Colors.black)),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              // editText username
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Textfield_Costume(
                    typeTextField: TextInputType.emailAddress,
                    hintText: "Enter Your Email",
                    controller: emailController,
                    obscureText: false),
              ),
              const SizedBox(
                height: 16,
              ),
              // editText password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Password',
                    style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                            height: 1.5,
                            fontSize: 16,
                            // ! jika ingin menggunakan code hex untuk setting color maka diawali dengan 0xFF(warna hex)
                            color: Colors.black)),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              // editText email
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Textfield_Costume(
                    typeTextField: TextInputType.text,
                    hintText: "Enter Unique Password",
                    controller: passwordController,
                    obscureText: true),
              ),
              // button
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: register,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff007DFE),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                    child: const Text(
                      'Register',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              // link to register
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Have an Account? '),
                  GestureDetector(
                    // ! untuk mengakali digunaaknkag Gesture detextor yang didalamnya jika ada onTAp maka akan mengeksekusi push MaterialPagesRoute
                    //! ke Login()
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Login();
                        },
                      ));
                    },
                    child: Text(
                      'Login to Your Account',
                      style: GoogleFonts.roboto(
                          textStyle:
                              const TextStyle(fontWeight: FontWeight.w600)),
                    ),
                  )
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
