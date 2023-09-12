import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: DataTable(
            columns: <DataColumn> [
              DataColumn(
                label: const Text('Car Make'),
                numeric: false,
                onSort: (i, b) {
                  setState(() {
                    carData.sort((a,b) => a.carMake!.compareTo(b.carMake!));
                  });
                },
             ),
             DataColumn(
                label: const Text('Model'),
                numeric: false,
                onSort: (i, b) {
                  setState(() {
                    carData.sort((a,b) => a.carMake!.compareTo(b.carMake!));
                  });
                },
             ),
             DataColumn(
                label: const Text('Price'),
                numeric: false,
                onSort: (i, b) {
                  setState(() {
                    carData.sort((a,b) => a.carMake!.compareTo(b.carMake!));
                  });
                },
             ),
             
            ], 
            rows: carData.map((x) => DataRow(
              cells: [
                DataCell(Text(x.carMake.toString())),
                DataCell(Text(x.model.toString())),
                DataCell(Text(x.price.toString()))
              ]
            )
            ).toList()
          ),
        ),
      )
    );
  }

}
  class Car {
    String? carMake;
    String? model;
    int? price;

    Car({this.carMake, this.model, this.price});
  }
  

  var carData = <Car> [
    Car(carMake: 'Honda', model: '2021', price: 35000),
    Car(carMake: 'Toyota', model: '2011', price: 6000),
    Car(carMake: 'BMW', model: '2012', price: 9000),
  ];