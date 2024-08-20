import 'package:cinema_app/model/ApiHelper.dart';
import 'package:flutter/material.dart';
import 'package:cinema_app/screens/FilmDetails.dart';

class Listfilms extends StatefulWidget {
  const Listfilms({super.key});

  @override
  State<Listfilms> createState() => _ListfilmsState();
}

class _ListfilmsState extends State<Listfilms> {
  Apihelper apihelper = Apihelper();
  List<dynamic> films = [];

  @override
  void initState() {
    super.initState();
    apihelper.GetFilms().then((value) {
      setState(() {
        films = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List of Films', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black87,
      body: films.isEmpty
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            )
          : ListView.builder(
              itemCount: films.length,
              itemBuilder: (context, index) {
                final film = films[index];
                return Card(
                  color: Colors.grey[900],
                  margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(16.0),
                    title: Text(
                      film['title'],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      film['overview'],
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        'https://image.tmdb.org/t/p/w500${film['poster_path']}',
                        width: 50,
                        height: 75,
                        fit: BoxFit.cover,
                      ),
                    ),
                    onTap: () {
                      apihelper.GetFilmDetails(film['id']).then((value) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FilmDetails(films: value),
                          ),
                        );
                      });
                    },
                  ),
                );
              },
            ),
    );
  }
}
