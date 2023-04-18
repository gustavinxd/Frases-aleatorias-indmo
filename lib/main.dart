import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'APP frases aleatórias',
    home: frases(),
  ));
}
class frases extends StatefulWidget {
  const frases({Key? key}) : super(key: key);

  @override
  State<frases> createState() => _frasesState();
}
class _frasesState extends State<frases> {

  var _memesimg =[
    'image/memesimg/meme1.png',
    'image/memesimg/meme2.png',
    'image/memesimg/meme3.png',
    'image/memesimg/meme4.png',
    'image/memesimg/meme6.png',
    'image/memesimg/meme7.png',
    'image/memesimg/meme8.png',
  ];

  var _memeGerado= 'image/memes.png';

  void _gerarMeme(){
    var numSorteadoimage = Random().nextInt(_memesimg.length);

    setState(() {
      _memeGerado= _memesimg[numSorteadoimage];

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Memes do dia'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset('image/memes.png'
              ),
              Image.asset(_memeGerado,
              ),
              Text('Clique abaixo para gerar um meme!',
                style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  color: Colors.black87,
                ),
              ),
              ElevatedButton(
                onPressed: _gerarMeme,
                child: Text('Novo meme',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold
                ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

