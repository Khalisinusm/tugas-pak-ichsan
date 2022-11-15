import 'package:flutter/material.dart';

class ProdukDetail extends StatefulWidget {
  final String? kodeProduk;
  final String? namaProduk;
  final int? harga;

  const ProdukDetail({Key? key, this.kodeProduk, this.namaProduk, this.harga})
      : super(key: key);

  @override
  _ProdukDetailState createState() => _ProdukDetailState();
}

class _ProdukDetailState extends State<ProdukDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('detail produk'),
      ),
      body: Column(
        children: [
          Text("kode produk : " + widget.kodeProduk.toString()),
          Text("nama produk : ${widget.namaProduk}"),
          Text("harga : ${widget.harga}")
        ],
      ),
    );
  }
}
