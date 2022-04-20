import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter with Utter Academy',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Products'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.shopping_bag_outlined,
          ),
          title: Text(title), // The title text which will be shown on the action bar
        ),
        body: Align(
            child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
              child: ListTile(
                tileColor: Colors.grey[100],
                leading: Image.network("https://cdn.discordapp.com/attachments/859739855964864576/966337295147991170/shirt.jpg"),
                title: Text(
                  'T-Shirt',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Text(
                  'Shirt-420',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: Icon(
                  Icons.delete_outline,
                  color: Colors.red,
                ),
              ),
            );
          },
        )));
  }
}
