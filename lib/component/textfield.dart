import 'package:flutter/material.dart';

// ! membuat component Textfield agar nanti bisa di reuse
class Textfield_Costume extends StatefulWidget {
  // ! variabel variabel dibawah ini akan mewakilkan dari hintext, controller, obscureText dan akan di masukan nilainya lewat constrcutor
  final String hintText;

  //! controller disini adalah sebuah variabel yang menampung nilai dari apa yang di masukan di textfield
  final controller;
  final bool obscureText;
  final TextInputType typeTextField;

  const Textfield_Costume({
    // ! supper.key digunakan untuk mengakses atribut dan methid yang ada di parentnya, yang mana disini parentnya adalah statelessWidget
    //! jadi dikasih super.key agar kita masih bisa mengkases apa saja yang ada di class StatelessWidget
    super.key,
    required this.typeTextField,
    required this.hintText,
    required this.controller,
    required this.obscureText,
  });

  @override
  State<Textfield_Costume> createState() => _Textfield_CostumeState();
}

class _Textfield_CostumeState extends State<Textfield_Costume> {
  bool visiblePassowrd = true;

  /*
    * saat kita menggunakan class yang susdah dibuat ini maka kita bisa diwajibkan untuk memasukan nilai dari variabel yang sudah dibuat lewat controller
    * sejatinya widget costume ini adlaah class dan jika kita mengakses di main.dart berebntuk controller
    * 
   */
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      keyboardType: widget.typeTextField,
      obscureText: widget.obscureText && visiblePassowrd,
      decoration: InputDecoration(
        suffixIcon: widget.obscureText
            ? IconButton(
                onPressed: () {
                  setState(() {
                    visiblePassowrd = !visiblePassowrd;
                  });
                },
                icon: visiblePassowrd
                    ? Icon(Icons.remove_red_eye)
                    : Icon(Icons.remove_red_eye_outlined))
            : null,
        hintText: widget.hintText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(
            color: Color(0xffE7E0EC),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(
            color: Color(0xff007DFE),
          ),
        ),
        fillColor: Colors.white,
      ),
    );
  }
}
