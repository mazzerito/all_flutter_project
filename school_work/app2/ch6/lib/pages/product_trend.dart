import 'package:flutter/material.dart';

class ProductTrend extends StatefulWidget {
  const ProductTrend({super.key});

  @override
  State<ProductTrend> createState() => _ProductTrendState();
}

class _ProductTrendState extends State<ProductTrend> {
  List imgProduct = [
    'assets/2.jpg',
    'assets/6.jpg',
    'assets/9.jpg',
    'assets/21.jpg',
    'assets/23.jpg',
    'assets/27.jpg',
    'assets/29.jpg',
    'assets/30.jpg',
  ];

  List name = [
    'G-Serum',
    'G-Toner',
    'G-Bright',
    'O-Serum',
    'Eucerine Spotlight',
    'La-Serum',
    'V-Booster',
    'Dr.Pong Serum',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Trend'),
        backgroundColor: Color(0xFFf9e79f),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      childAspectRatio: 2 / 3),
                  itemCount: imgProduct.length,
                  itemBuilder: (context, index) {
                    return Center(
                      child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(child: Image.asset(imgProduct[index])),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(name[index]),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          )),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton.icon(
            onPressed: _onBack,
            icon: Icon(
              Icons.home,
              color: Colors.blue[700],
            ),
            label: Text('Back Homepage', style: TextStyle(color: Colors.blue[700]),)),
      ),
    );
  }

  void _onBack() {
    Navigator.of(context).popUntil(ModalRoute.withName('/'));
  }
}
