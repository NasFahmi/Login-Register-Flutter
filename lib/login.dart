import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'register.dart';
//! import textfield yang sudah dibuat
import 'component/textfield.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //! membuat contoller yang nnati digunakan untuk menampung email dan password
  final emailContorller = TextEditingController();
  final passwordController = TextEditingController();
  void login() {}
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
                'Welcome Back',
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
              // editText email
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Textfield_Costume(
                    controller: emailContorller,
                    typeTextField: TextInputType.emailAddress,
                    hintText: "Enter Your Email",
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
              // editText password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Textfield_Costume(
                  typeTextField: TextInputType.text,
                  hintText: "Enter Your Password",
                  obscureText: true,
                  controller: passwordController,
                ),
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
                    onPressed: login,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff007DFE),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                    child: const Text(
                      'Login',
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
                  const Text('Don’t have an account yet? '),
                  GestureDetector(
                    onTap: () {
                      //! navigaotr adalah funsi yang digunakan untuk route ke halaman selanjutnya, tetapi jika agar bisa menggunakan tombol butotn maka bisa menggunakan .pop
                      //! jika seandainya kasus ingin berubah ke next halaman dan tidak bisa kembali lagi kecuali restart app maka menggunakan navigator.pushRepleacmnet

                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Register();
                        },
                      ));
                    },
                    child: Text(
                      'Create An Account',
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
