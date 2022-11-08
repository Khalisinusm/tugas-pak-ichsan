import 'package:flutter/material.dart';

class ProdukForm extends StatefulWidget {
  const ProdukForm({super.key});

  @override
  State<ProdukForm> createState() => _ProdukFormState();
}

class _ProdukFormState extends State<ProdukForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('From Produk'),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          TextField(
              decoration: const InputDecoration(labelText: "kode produk")),
          TextField(
              decoration: const InputDecoration(labelText: "nama produk")),
          TextField(
              decoration: const InputDecoration(labelText: "harga produk")),
          ElevatedButton(onPressed: () {}, child: const Text('simpan'))
        ],
      )),
    );
  }
}
