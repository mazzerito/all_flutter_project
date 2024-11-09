import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shop Shop"),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Click Trend Products button to see more...'),
            ElevatedButton.icon(
                onPressed: _onBack,
                icon: Icon(Icons.arrow_back),
                label: Text('Back')),
            SizedBox(
              width: 50,
            ),
            ElevatedButton.icon(
                onPressed: _trendProduct,
                icon: Icon(
                  Icons.star,
                  size: 25,
                  color: Colors.orange[700],
                ),
                label: Text(
                  'Trend Product',
                  style: TextStyle(color: Colors.orange[700], fontSize: 20,),
                ))
          ],
        ),
      ),
    );
  }

  void _onBack() {
    Navigator.of(context).pop();
  }

  void _trendProduct() {
    Navigator.of(context).pushNamed('/trendProduct');
  }
}
