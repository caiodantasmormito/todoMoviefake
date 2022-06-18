import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen>
    with SingleTickerProviderStateMixin {
  get children => null;
  final lista = [
    {
      'nome': 'Edward Scissorhands',
      'ano': '1990  Drama, Fantasy',
      'genero': 'Drama, Fantasy',
      'avatar': 'https://m.media-amazon.com/images/I/511JEPNGDNL._AC_SY445_.jpg'
    },
    {
      'nome': 'Ed Wood',
      'ano': '1994  Comedy, Drama',
      'genero': 'Comedy, Drama',
      'avatar': 'https://images.justwatch.com/poster/10362429/s592/ed-wood'
    },
    {
      'nome': 'A Nightmare on Elm Street',
      'ano': '1984  Horror',
      'genero': 'Horror',
      'avatar': 'https://flxt.tmsimg.com/assets/p8572_p_v8_ad.jpg'
    },
    {
      'nome': 'Pirates of the Caribbean: The Curse of the Black Pearl',
      'ano': '1990  Drama, Fantasy',
      'genero': 'Drama, Fantasy',
      'avatar':
          'https://upload.wikimedia.org/wikipedia/pt/e/e6/Pirates_of_the_Caribbean_-_The_Curse_of_the_Black_Pearl.jpg'
    },
  ];
  bool _isFavorited = false;
  int _favoriteCount = 0;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: null,
        body: ListView(children: <Widget>[
          SizedBox(
            height: 450,
            child: FittedBox(
              fit: BoxFit.fitHeight,
              clipBehavior: Clip.hardEdge,
              alignment: Alignment.bottomCenter,
              child: Image.asset("assets/depp.jpeg"),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(children: [
            SizedBox(
                height: 60,
                width: 200,
                child: Container(
                    color: Colors.black,
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'The Very Best Of Johnny Depp',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ))),
            const SizedBox(
                width: 190,
                child: Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    )))
          ]),
          const SizedBox(height: 10),
          Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(children: const [
                Icon(
                  Icons.favorite,
                  size: 14,
                  color: Colors.white,
                ),
                Text('  1.2K Likes',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                SizedBox(
                  width: 25,
                ),
                Icon(
                  Icons.radio_button_on,
                  color: Colors.white,
                  size: 14,
                ),
                Text('  Popularity',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ])),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemCount: lista.length,
              itemBuilder: (BuildContext context, i) {
                var filmes = lista[i];
                var avatar = Image.network(
                  (filmes['avatar'].toString()),
                );
                return ListTile(
                  leading: avatar,
                  title: Text(filmes['nome'].toString(),
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  subtitle: Text(filmes['ano'].toString(),
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                );
              },
            ),
          ),
        ]));
  }
}
