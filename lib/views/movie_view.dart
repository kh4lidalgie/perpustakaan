import 'package:flutter/material.dart';
import 'package:crud_perpus/controller/movie_controller.dart';
import 'package:crud_perpus/models/movie.dart';
import 'package:crud_perpus/widgets/modal.dart';

class MovieView extends StatefulWidget {
  const MovieView({super.key});
  @override
  State<MovieView> createState() => _MovieViewState();
}

class _MovieViewState extends State<MovieView> {
  final formKey = GlobalKey<FormState>();
  MovieController movie = MovieController();
  TextEditingController title = TextEditingController();
  TextEditingController gambar = TextEditingController();
  TextEditingController voteAverage = TextEditingController();
  List buttonChoice = ["Update", "Hapus"];
  List? film;
  List? film_id;
  getFilm() {
    setState(() {
      film = movie.movie;
    });
  }

  @override
  void initState() {
    super.initState();
    getFilm();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie"),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  film_id = null;
                });
                title.text = '';
                gambar.text = '';
                voteAverage.text = '';
                ModalWidget().showFullModal(context, addItem(null));
              },
              icon: Icon(Icons.add)),
        ],
      ),
      body: ListView.builder(
          itemCount: film!.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Image(image: AssetImage(film![index].posterPath)),
                title: Text(film![index].title),
                trailing: PopupMenuButton(
                  itemBuilder: (BuildContext context) {} 
                ),
              ),
            );
          }),
    );
  }
}
