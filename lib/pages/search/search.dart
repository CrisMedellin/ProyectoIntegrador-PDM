import 'package:bibliteso/bloc/search_book_bloc.dart';
import 'package:bibliteso/camera_qr.dart/camera.dart';
import 'package:bibliteso/items/item_book.dart';
import 'package:bibliteso/pages/search/menu_laterarl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shimmer/flutter_shimmer.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return Scaffold(
      drawer: MenuLateral(),
      appBar: AppBar(
        title: const Text('Biblioteca Dr. Jorge Villalobos Padilla, SJ'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            tooltip: 'Open shopping cart',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Camera(),
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              cursorColor: Colors.white,
              controller: searchController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text(
                  "ingresar titulo",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () async {
                    BlocProvider.of<SearchBookBloc>(context).add(
                        SearchingBookEvent(titleSearch: searchController.text));
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: BlocBuilder<SearchBookBloc, SearchBookState>(
              builder: (context, state) {
                if (state is SearchingState) {
                  return ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return const VideoShimmer();
                    },
                  );
                } else if (state is ErrorInSearchingState) {
                  return const Center(
                    child: Text('hubo un error en la busqueda del libro'),
                  );
                } else if (state is FoundInSearchState) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                        ),
                        itemCount: state.findBooks.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ItemShowBook(findBook: state.findBooks[index]);
                        }),
                  );
                } else {
                  return const Center(
                    child: Text('Ingrese una palabra para buscar el libro'),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
