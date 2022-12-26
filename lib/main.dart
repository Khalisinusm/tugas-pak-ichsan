import 'package:flutter/material.dart';
// import 'package:flutter_app/column_widget.dart';
// import 'package:flutter_app/row_widget.dart';
//import 'package:flutter_app/ui/produk_form.dart';
// import 'package:flutter_app/hello_world.dart';
import 'package:flutter_app/ui/produk_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "app flutter pertama",
      home: ProdukPage(),
    );
  }
}
