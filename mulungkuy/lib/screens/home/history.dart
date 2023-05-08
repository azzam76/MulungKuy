import 'package:flutter/material.dart';

class OrderHistoryPage extends StatelessWidget {
  final List<Order> orders = [
    Order(
        id: '1',
        title: 'Kopelma Darussalam',
        date: ' 1 Januari  09:30',
        status: OrderStatus.success),
    Order(
        id: '2',
        title: 'Kopelma Darussalam',
        date: ' 14 Januari   08:40',
        status: OrderStatus.success),
    Order(
        id: '3',
        title: 'Kopelma Darussalam',
        date: ' 18 Januari  10:15',
        status: OrderStatus.failure),
    Order(
        id: '4',
        title: 'Kopelma Darussalam',
        date: ' 2 Februari  08:20',
        status: OrderStatus.success),
    Order(
        id: '5',
        title: 'Kopelma Darussalam',
        date: ' 14 Februari 09:40',
        status: OrderStatus.failure),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black, // Set the color of the leading icon to white
        ),
        title: Text(
          'Riwayat Pesanan',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
        ),
        backgroundColor: Color.fromARGB(
            255, 255, 255, 255), // Set the app bar background color
      ),
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (context, index) {
          final order = orders[index];
          return Card(
            color: Color(0xFFF5F5F5),
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: ListTile(
              title: Text(
                order.title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      order.status == OrderStatus.success
                          ? Icon(Icons.fire_truck,
                              color: Color.fromARGB(255, 226, 136, 0))
                          : Icon(Icons.fire_truck,
                              color: Color.fromARGB(255, 83, 83, 83)),
                      SizedBox(width: 8),
                      Text(
                        order.status == OrderStatus.success
                            ? 'Pick Up Berhasil'
                            : 'Pick Up Gagal',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    order.date,
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  SizedBox(height: 4),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFF57AE09),
              ),
              onTap: () {
                // Navigate to order detail page
              },
            ),
          );
        },
      ),
    );
  }
}

class Order {
  final String id;
  final String title;
  final String date;
  final OrderStatus status;

  Order(
      {required this.id,
      required this.title,
      required this.date,
      required this.status});
}

enum OrderStatus {
  success,
  failure,
}
