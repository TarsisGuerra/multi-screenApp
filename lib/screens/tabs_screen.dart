import 'package:flutter/material.dart';
import 'categories_screens.dart';
import 'favorite_screen.dart';

class TabsScreen extends StatelessWidget {
  const TabsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Center(
            child: Text(
              'Vamos cozinhar?',
              style: TextStyle(color: Colors.white),
            ),
          ),
          bottom: TabBar(
            unselectedLabelColor: Colors.white30,
            labelColor: Colors.white,
            tabs: [
              Tab(
                icon: Icon(Icons.category, color: Colors.white),
                text: 'Categorias',
              ),
              Tab(
                icon: Icon(Icons.star, color: Colors.white),
                text: 'Favoritos',
              ),
            ],
          ),
        ),
        body: TabBarView(children: [CategoriesScreen(), FavoriteScreen()]),
      ),
    );
  }
}
