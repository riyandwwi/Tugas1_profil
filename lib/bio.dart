
import 'package:flutter/material.dart';



class biox extends StatelessWidget {
  const biox ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace:  Image(
          image: AssetImage('assets/images/ap.png',),
          fit: BoxFit.cover, 
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/b.png'),
            fit: BoxFit.cover
             )
        ),
        child: Container(
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              
              Tulisan(Isi: "Riyan Dwi Yulian P", Judul: "Nama "),
              Tulisan(Isi: "27", Judul: "Umur"),
              Tulisan(Judul: "Alamat :", Isi: " Yogyakarta ",),
              Tulisan(Isi: "Oseng kangkung", Judul: "makanan  : ")

            ],
          ),
        ),
    )
    );
  }
}

class Tulisan extends StatelessWidget {
  const Tulisan({
    required this.Isi,
    required this.Judul,
    super.key,
  });
  final String Judul;
  final String Isi;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:<Widget> [
        Text(Judul),
        SizedBox(width: 10,),
        Text(Isi)
      ],
    );
  }
}