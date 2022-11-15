import 'package:flutter/material.dart';
import 'package:flutter_app/ui/produk_detail.dart';

class ProdukForm extends StatefulWidget {
  const ProdukForm({Key? key}) : super(key: key);

  @override
  _ProdukFormState createState() => _ProdukFormState();
}

class _ProdukFormState extends State<ProdukForm> {
  final _kodeProdukTextboxController = TextEditingController();
  final _namaProdukTextboxController = TextEditingController();
  final _hargaProdukTextboxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('From Produk'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _textboxkodeproduk(),
            _textboxnamaproduk(),
            _textboxhargaproduk(),
            _tombolsimpan()
          ],
        ),
      ),
    );
  }

  _textboxkodeproduk() {
    return TextField(
      decoration: const InputDecoration(labelText: "kode produk"),
      controller: _kodeProdukTextboxController,
    );
  }

  _textboxnamaproduk() {
    return TextField(
      decoration: const InputDecoration(labelText: "nama produk"),
      controller: _namaProdukTextboxController,
    );
  }

  _textboxhargaproduk() {
    return TextField(
      decoration: const InputDecoration(labelText: "harga produk"),
      controller: _hargaProdukTextboxController,
    );
  }

  _tombolsimpan() {
    return ElevatedButton(
        onPressed: () {
          String kodeProduk = _kodeProdukTextboxController.text;
          String namaProduk = _namaProdukTextboxController.text;
          int harga = int.parse(_hargaProdukTextboxController.text);
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ProdukDetail(
                    kodeProduk: kodeProduk,
                    namaProduk: namaProduk,
                    harga: harga,
                  )));
        },
        child: const Text('simpan'));
  }
}
