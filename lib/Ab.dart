import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
            
              expandedHeight: 202.0,
              floating: false,
              pinned: false,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  'https://placekitten.com/1200/600',
                  fit: BoxFit.cover,
                ),
              ),
            ),
           const SliverAppBar(
              pinned: true,
              primary: false,
              leading: Row(
                children: [
                  Icon(Icons.abc),
                  Icon(Icons.abc),
                  Icon(Icons.abc),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  const ListTile(
                    leading: Icon(Icons.wb_sunny),
                    title: Text('Item 1'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.wb_sunny),
                    title: Text('Item 1'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.wb_sunny),
                    title: Text('Item 1'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.wb_sunny),
                    title: Text('Item 1'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.wb_sunny),
                    title: Text('Item 1'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.wb_sunny),
                    title: Text('Item 1'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.wb_sunny),
                    title: Text('Item 1'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.wb_sunny),
                    title: Text('Item 1'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.wb_sunny),
                    title: Text('Item 1'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.wb_sunny),
                    title: Text('Item 1'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.wb_sunny),
                    title: Text('Item 1'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.wb_sunny),
                    title: Text('Item 1'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.wb_sunny),
                    title: Text('Item 1'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.wb_sunny),
                    title: Text('Item 1'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.wb_sunny),
                    title: Text('Item 1'),
                  ),
                  // Add more list items as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
